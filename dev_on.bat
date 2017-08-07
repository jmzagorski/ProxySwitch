REG add HKEY_CURRENT_USER\Environment /F /V http_proxy /d %proxyserver%
REG add HKEY_CURRENT_USER\Environment /F /V https_proxy /d %proxyserver%

call npm config set proxy http://%proxyserver%
call npm config set https-proxy http://%proxyserver%
call git config --global http.proxy %proxyserver%
call git config --global https.proxy %proxyserver%
call nvm proxy %proxyserver%
