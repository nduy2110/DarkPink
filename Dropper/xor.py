def xor(infile_path, outfile_path, key):
  if not isinstance(infile_path, str) or not isinstance(outfile_path, str):
    raise ValueError("Paths must be strings.")

  key_bytes = bytearray(key, "ascii")
  key_length = len(key_bytes)
  key_index = 0

  with open(infile_path, "rb") as infile, open(outfile_path, "wb") as outfile:
    while True:
      byte = infile.read(1)
      if not byte:
        break
      outfile.write(bytes([byte[0] ^ key_bytes[key_index]]))
      key_index = (key_index + 1) % key_length

infile_path = "payload_x86.bin"
outfile_path = "shell.bin"
key = "V"

xor(infile_path, outfile_path, key)
