call npm config set proxy http://%PROXY_WORK%
call npm config set https-proxy http://%PROXY_WORK%
call git config --global http.proxy %PROXY_WORK%
call git config --global https.proxy %PROXY_WORK%
call nvm proxy %PROXY_WORK%

REG add HKEY_CURRENT_USER\Environment /F /V http_proxy /d %PROXY_WORK%
REG add HKEY_CURRENT_USER\Environment /F /V https_proxy /d %PROXY_WORK%
