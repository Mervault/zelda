@echo off

REM run install to check / update node module required by the bot
call npm install
SETLOCAL
SET PATH=node_modules\.bin;node_modules\hubot\node_modules\.bin;%PATH%

REM required environnment variables for matrix connexion
SET HUBOT_MATRIX_HOST_SERVER=
SET HUBOT_MATRIX_USER=
SET HUBOT_MATRIX_PASSWORD=
SET HUBOT_LOG_LEVEL="debug"

REM required environment variables for proxy handling (module https-proxy-agent)
REM SET http_proxy=
REM SET HTTP_PROXY=
REM SET https_proxy=
REM SET HTTPS_PROXY=
REM SET no_proxy=
REM SET NO_PROXY=

REM required environment variables for room filtering (module hubot-slack-whitelist-middleware)
SET HUBOT_WHITELIST=

REM firing up the bot
node_modules\.bin\hubot.cmd --name "Zelda" %* 