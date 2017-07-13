REG delete HKEY_CURRENT_USER\Environment /F /V http_proxy
REG delete HKEY_CURRENT_USER\Environment /F /V https_proxy

call npm config rm proxy
call npm config rm https-proxy
call git config --global --unset http.proxy
call git config --global --unset https.proxy
call nvm proxy none
