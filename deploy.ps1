# Hot Issue Radar -> GitHub Pages 1-Click Deploy (juno99zz-arkt/hot-issue-radar)
$RepoName = "hot-issue-radar"
$Owner = "juno99zz-arkt"

git init
git branch -M main
git add .
git commit -m "feat: initial Hot Issue Deep Research Archive & Report #1"

# Create public repo and push via GitHub CLI (gh)
gh repo create "$Owner/$RepoName" --public --source=. --remote=origin --push

# Enable GitHub Pages on main branch (root /)
gh api -X POST "repos/$Owner/$RepoName/pages" -f "source[branch]=main" -f "source[path]=/"

Write-Host ""
Write-Host "배포 요청 완료! 약 1~2분 뒤 아래 주소에서 어디서나 접속할 수 있습니다:" -ForegroundColor Green
Write-Host "https://$Owner.github.io/$RepoName/" -ForegroundColor Yellow
