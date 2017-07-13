REG add HKEY_CURRENT_USER\Environment /F /V http_proxy /d %http_proxy%
REG add HKEY_CURRENT_USER\Environment /F /V https_proxy /d %http_proxy%

call npm config set proxy http://%http_proxy%
call npm config set https-proxy http://%http_proxy%
call git config --global http.proxy %http_proxy%
call git config --global https.proxy %http_proxy%
call nvm proxy %http_proxy%
