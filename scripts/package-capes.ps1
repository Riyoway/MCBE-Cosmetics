$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$sourceRoot = Join-Path $repoRoot 'resource_packs\capes'
$outputRoot = Join-Path $repoRoot 'dist\capes'

New-Item -ItemType Directory -Force -Path $outputRoot | Out-Null

foreach ($index in 1..5) {
    $source = Join-Path $sourceRoot "Cape-Cosmetics-$index"
    if (-not (Test-Path (Join-Path $source 'manifest.json'))) {
        throw "Missing resource pack: $source"
    }

    $tempZip = Join-Path $outputRoot "Cape-Cosmetics-$index.zip"
    $mcpack = Join-Path $outputRoot "Cape-Cosmetics-$index.mcpack"

    Remove-Item $tempZip, $mcpack -Force -ErrorAction SilentlyContinue
    Compress-Archive -Path (Join-Path $source '*') -DestinationPath $tempZip -CompressionLevel Optimal
    Move-Item $tempZip $mcpack

    Write-Host "Built $mcpack" -ForegroundColor Green
}
