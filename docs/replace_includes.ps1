# PowerShell script to replace includes in all HTML files
$navContent = Get-Content "_nav.html" -Raw
$footerContent = Get-Content "_footer.html" -Raw

$files = @("features.html", "components.html", "quick-start.html", "themes.html", "index.html")

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content $file -Raw
        $content = $content -replace '<!--#include file="_nav.html" -->', $navContent
        $content = $content -replace '<!--#include file="_footer.html" -->', $footerContent
        Set-Content $file $content -NoNewline
        Write-Host "Updated $file"
    }
}

