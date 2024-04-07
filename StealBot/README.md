Browser History lưu ở `$env:tmp\6d30b4e3442b4a5eef8dbc952a52cb3c`

Các file document lưu ở `$env:tmp\21f64da1e5792c8295b964d159a14491`

Thực thi cmd và lưu tại `$env:temp "bee96b3468e219f06905b1ceaa1d4902"`

Hàm `Get-MicrophoneAudio` mặc định record 2min syntax `Get-MicrophoneAudio -Path $Directory\secret.wav -Length 120 -Alias "SECRET"` lưu tại `$env:tmp\207812f09349ef96b709cfe8d7e295ba`

Các file obfucated có tính năng như trên + mã hóa -> xuất ra file .zip(vd: `env:tmp\21f64da1e5792c8295b964d159a14491` -> `env:tmp\21f64da1e5792c8295b964d159a14491_.zip`)

Gom các file .zip vô chung 1 folder rồi run file `decrypt.py` (chỉnh sửa path folder nếu cần)