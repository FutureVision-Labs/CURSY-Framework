# CURSY Framework - Create GitHub Repository Script
# Uses GitHub API with PAT

Write-Host "🚗💖✨ CURSY Framework - GitHub Repo Creator ✨💖🚗" -ForegroundColor Cyan
Write-Host ""

# Try to get PAT from environment or Cursor config
$pat = $env:GITHUB_TOKEN
if (-not $pat) {
    $pat = $env:GITHUB_PAT
}
if (-not $pat) {
    Write-Host "📝 GitHub PAT not found in environment variables." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Please provide your GitHub Personal Access Token:" -ForegroundColor Cyan
    Write-Host "(Or set GITHUB_TOKEN environment variable)" -ForegroundColor Gray
    Write-Host ""
    $pat = Read-Host "Enter GitHub PAT" -AsSecureString
    $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pat)
    $pat = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
}

if (-not $pat) {
    Write-Host "❌ No PAT provided. Exiting." -ForegroundColor Red
    exit 1
}

# Get GitHub username from API
Write-Host "🔍 Getting GitHub username..." -ForegroundColor Cyan
$headers = @{
    "Authorization" = "token $pat"
    "Accept" = "application/vnd.github.v3+json"
}

try {
    $userResponse = Invoke-RestMethod -Uri "https://api.github.com/user" -Headers $headers -Method Get
    $username = $userResponse.login
    Write-Host "✅ Authenticated as: $username" -ForegroundColor Green
} catch {
    Write-Host "❌ Authentication failed. Please check your PAT." -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    exit 1
}

Write-Host ""
$repoName = Read-Host "Repository name (default: CURSY-Framework)"
if (-not $repoName) {
    $repoName = "CURSY-Framework"
}

$description = "A hand-crafted, synthwave/cyberpunk CSS framework - The Bulma/Tailwind killer! 🚗💖✨"
$isPrivate = Read-Host "Make repository private? (y/n, default: n)"
$private = if ($isPrivate -eq 'y') { $true } else { $false }

Write-Host ""
Write-Host "📦 Creating repository: $repoName" -ForegroundColor Cyan

$body = @{
    name = $repoName
    description = $description
    private = $private
    auto_init = $false
    license_template = "mit"
} | ConvertTo-Json

try {
    $repoResponse = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Headers $headers -Method Post -Body $body -ContentType "application/json"
    Write-Host "✅ Repository created successfully!" -ForegroundColor Green
    Write-Host "   URL: $($repoResponse.html_url)" -ForegroundColor Cyan
} catch {
    Write-Host "❌ Failed to create repository." -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    
    # Check if repo already exists
    if ($_.Exception.Response.StatusCode -eq 422) {
        Write-Host ""
        Write-Host "⚠️  Repository might already exist. Continuing with push..." -ForegroundColor Yellow
    } else {
        exit 1
    }
}

Write-Host ""
Write-Host "📤 Pushing code to GitHub..." -ForegroundColor Cyan

# Configure git if needed
$gitEmail = git config user.email
$gitName = git config user.name

if (-not $gitEmail -or -not $gitName) {
    Write-Host "⚠️  Git not configured. Configuring now..." -ForegroundColor Yellow
    $email = Read-Host "Enter your email"
    $name = Read-Host "Enter your name"
    git config user.email $email
    git config user.name $name
}

# Add remote and push
$repoUrl = "https://$pat@github.com/$username/$repoName.git"

# Remove existing remote if any
git remote remove origin 2>$null

# Add remote with PAT
git remote add origin $repoUrl

# Commit if needed
$status = git status --porcelain
if ($status) {
    git add .
    git commit -m "Initial commit: CURSY Framework v0.420a - The Bulma/Tailwind Killer 🚗💖✨"
}

# Push
git branch -M main
git push -u origin main

Write-Host ""
Write-Host "✅ Code pushed successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "🌐 Repository: https://github.com/$username/$repoName" -ForegroundColor Cyan
Write-Host ""
Write-Host "📄 Next: Enable GitHub Pages" -ForegroundColor Yellow
Write-Host "1. Go to: https://github.com/$username/$repoName/settings/pages" -ForegroundColor White
Write-Host "2. Source: Deploy from a branch" -ForegroundColor White
Write-Host "3. Branch: main, Folder: /docs" -ForegroundColor White
Write-Host "4. Click Save" -ForegroundColor White
Write-Host ""
Write-Host "Your site will be live at:" -ForegroundColor Cyan
Write-Host "https://$username.github.io/$repoName/" -ForegroundColor Yellow
Write-Host ""
Write-Host "🚗💖✨ Done! ✨💖🚗" -ForegroundColor Cyan

