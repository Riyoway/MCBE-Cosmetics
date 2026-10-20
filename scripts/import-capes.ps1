param(
    [Parameter(Mandatory = $true)]
    [string]$InputDirectory
)

$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$targetRoot = Join-Path $repoRoot 'resource_packs\capes'
$inputRoot = (Resolve-Path $InputDirectory).Path

New-Item -ItemType Directory -Force -Path $targetRoot | Out-Null

foreach ($index in 1..5) {
    $archive = Join-Path $inputRoot "Cape-Cosmetics-$index.mcpack"
    if (-not (Test-Path $archive)) {
        throw "Missing $archive"
    }

    $destination = Join-Path $targetRoot "Cape-Cosmetics-$index"
    if (Test-Path $destination) {
        Remove-Item -Recurse -Force $destination
    }

    New-Item -ItemType Directory -Force -Path $destination | Out-Null

    $tempZip = Join-Path $env:TEMP "Cape-Cosmetics-$index-$([guid]::NewGuid()).zip"
    try {
        Copy-Item $archive $tempZip
        Expand-Archive -Path $tempZip -DestinationPath $destination -Force
    }
    finally {
        Remove-Item $tempZip -Force -ErrorAction SilentlyContinue
    }

    if ($index -eq 5) {
        Remove-Item -Recurse -Force (Join-Path $destination 'subpacks\0frames') -ErrorAction SilentlyContinue
        Remove-Item -Recurse -Force (Join-Path $destination 'subpacks\0single') -ErrorAction SilentlyContinue
    }

    if (-not (Test-Path (Join-Path $destination 'manifest.json'))) {
        throw "Pack $index did not extract correctly. manifest.json is missing."
    }

    Write-Host "Imported Cape Cosmetics $index" -ForegroundColor Green
}

Write-Host "Capes imported into $targetRoot" -ForegroundColor Cyan
