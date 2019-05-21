#!/bin/bash
function telegram_send {

chat_id="$2"
text="$1"
bot_token="$3"

    curl -X POST "https://api.telegram.org/${bot_token}/sendMessage" -d "chat_id=${chat_id}&text=${text}"
}
