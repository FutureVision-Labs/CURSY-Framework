# CURSY Framework - Push to GitHub Script
# Run this script after creating the GitHub repository

Write-Host "🚗💖✨ CURSY Framework - GitHub Push Script ✨💖🚗" -ForegroundColor Cyan
Write-Host ""

# Check if git is configured
$gitEmail = git config user.email
$gitName = git config user.name

if (-not $gitEmail -or -not $gitName) {
    Write-Host "⚠️  Git user identity not configured!" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Please run these commands first:" -ForegroundColor Yellow
    Write-Host "  git config --global user.email 'your@email.com'" -ForegroundColor White
    Write-Host "  git config --global user.name 'Your Name'" -ForegroundColor White
    Write-Host ""
    $configure = Read-Host "Would you like to configure git now? (y/n)"
    if ($configure -eq 'y') {
        $email = Read-Host "Enter your email"
        $name = Read-Host "Enter your name"
        git config --global user.email $email
        git config --global user.name $name
        Write-Host "✅ Git configured!" -ForegroundColor Green
    } else {
        Write-Host "Please configure git and run this script again." -ForegroundColor Yellow
        exit
    }
}

Write-Host "✅ Git is configured!" -ForegroundColor Green
Write-Host ""

# Check if remote exists
$remote = git remote get-url origin 2>$null

if (-not $remote) {
    Write-Host "📝 No remote repository configured." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Steps to create GitHub repository:" -ForegroundColor Cyan
    Write-Host "1. Go to https://github.com/new" -ForegroundColor White
    Write-Host "2. Repository name: CURSY-Framework" -ForegroundColor White
    Write-Host "3. Choose Public or Private" -ForegroundColor White
    Write-Host "4. DON'T initialize with README" -ForegroundColor White
    Write-Host "5. Click 'Create repository'" -ForegroundColor White
    Write-Host ""
    $repoUrl = Read-Host "Enter your GitHub repository URL (e.g., https://github.com/username/CURSY-Framework.git)"
    
    if ($repoUrl) {
        git remote add origin $repoUrl
        Write-Host "✅ Remote added!" -ForegroundColor Green
    } else {
        Write-Host "No URL provided. Exiting." -ForegroundColor Yellow
        exit
    }
} else {
    Write-Host "✅ Remote repository: $remote" -ForegroundColor Green
}

Write-Host ""
Write-Host "📦 Committing files..." -ForegroundColor Cyan
git add .
git commit -m "Initial commit: CURSY Framework v0.420a - The Bulma/Tailwind Killer 🚗💖✨"

Write-Host ""
Write-Host "🚀 Pushing to GitHub..." -ForegroundColor Cyan
git branch -M main
git push -u origin main

Write-Host ""
Write-Host "✅ Done! Your repository is on GitHub!" -ForegroundColor Green
Write-Host ""
Write-Host "📄 Next steps:" -ForegroundColor Cyan
Write-Host "1. Go to your repository on GitHub" -ForegroundColor White
Write-Host "2. Settings → Pages" -ForegroundColor White
Write-Host "3. Source: Deploy from a branch" -ForegroundColor White
Write-Host "4. Branch: main, Folder: /docs" -ForegroundColor White
Write-Host "5. Click Save" -ForegroundColor White
Write-Host ""
Write-Host "Your site will be live at:" -ForegroundColor Cyan
Write-Host "https://[your-username].github.io/CURSY-Framework/" -ForegroundColor Yellow
Write-Host ""
Write-Host "🚗💖✨ Happy coding! ✨💖🚗" -ForegroundColor Cyan

