curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
pushd %~dp0
call npm install --no-audit
node server.js
pause
popd
