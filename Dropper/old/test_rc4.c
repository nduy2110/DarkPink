#include <stdio.h>
#include <stdint.h>
#include <string.h>

const char b64chars[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

int base64_decode(const char *input, int input_length, uint8_t *output) {
    int out_len = 0;
    uint32_t buf = 0;
    int buf_len = 0;

    for (int i = 0; i < input_length; i++) {
        char c = input[i];
        if (c == '=') {
            if (buf_len == 0) break; // padding character at start or consecutive padding
            if (i == input_length - 1) break; // single padding character at end
            if (buf_len == 2) return -1; // incorrect padding
            if (buf_len == 4) {
                // Discard last 2 bits if present
                buf >>= 2;
                output[out_len++] = buf & 0xFF;
                output[out_len++] = (buf >> 8) & 0xFF;
            } else {
                // Discard last 4 bits if present
                buf >>= 4;
                output[out_len++] = buf & 0xFF;
            }
            break;
        }

        const char *p = strchr(b64chars, c);
        if (p == NULL) return -1; // invalid character

        buf = (buf << 6) | (p - b64chars);
        buf_len += 6;

        if (buf_len >= 8) {
            buf_len -= 8;
            output[out_len++] = (buf >> buf_len) & 0xFF;
        }
    }

    return out_len;
}

int main() {
    const char *base64_ciphertexts[] = {}

    FILE *output_file = fopen("decrypted.exe", "wb");
    if (output_file == NULL) {
        perror("Error opening output file");
        return 1;
    }

    for (int i = 0; i < sizeof(base64_ciphertexts) / sizeof(base64_ciphertexts[0]); i++) {
        uint8_t decoded_ciphertext[1024]; // Allocate buffer for decoded ciphertext
        int decoded_length = base64_decode(base64_ciphertexts[i], strlen(base64_ciphertexts[i]), decoded_ciphertext);
        fwrite(decoded_ciphertext, sizeof(uint8_t), decoded_length, output_file);
    }

    fclose(output_file);
    return 0;
}