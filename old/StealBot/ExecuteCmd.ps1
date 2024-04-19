$outputDirectory = Join-Path $env:temp "bee96b3468e219f06905b1ceaa1d4902"

if (-not (Test-Path -Path $outputDirectory -PathType Container)) {
    New-Item -ItemType Directory -Path $outputDirectory -Force
}

while ($true) {
    $command = Read-Host "Enter a command (Type 'exit' to quit):"

    if ($command -eq 'exit') {
        break
    }

    try {
        $output = Invoke-Expression -Command $command

        $outputFilePath = Join-Path $outputDirectory "output_$(Get-Date -Format 'yyyyMMddHHmmss').txt"
        $output | Out-File -FilePath $outputFilePath -Encoding UTF8

    }
    catch {
    }
}