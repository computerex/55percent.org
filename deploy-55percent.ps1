$ErrorActionPreference = 'Stop'
$server = 'root@137.184.210.97'
$domain = '55percent.org'
$remoteRoot = '/var/www/55percent'
$remoteCert = '/root/55percent.org-cert'

Write-Host 'Uploading site files...' -ForegroundColor Cyan
ssh $server "mkdir -p $remoteRoot $remoteCert"
scp ./index.html ./styles.css ./app.js "$server`:$remoteRoot/"

Write-Host 'Uploading nginx configuration...' -ForegroundColor Cyan
scp ./55percent.nginx "$server`:/etc/nginx/sites-available/55percent.org"
ssh $server "ln -sf /etc/nginx/sites-available/55percent.org /etc/nginx/sites-enabled/55percent.org && nginx -t && systemctl reload nginx"

Write-Host 'Site deployed. HTTPS will be enabled after the certificate is provisioned.' -ForegroundColor Green
