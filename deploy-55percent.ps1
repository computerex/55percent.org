$ErrorActionPreference = 'Stop'
$server = 'root@137.184.210.97'
$remoteRoot = '/var/www/55percent'

Write-Host 'Pushing current branch to GitHub...' -ForegroundColor Cyan
git push origin main

Write-Host 'Pulling the latest commit on the VPS...' -ForegroundColor Cyan
ssh $server "git -C $remoteRoot fetch origin main && git -C $remoteRoot reset --hard origin/main && chown -R www-data:www-data $remoteRoot && nginx -t && systemctl reload nginx && git -C $remoteRoot log -1 --oneline"

Write-Host 'Git deployment complete.' -ForegroundColor Green
