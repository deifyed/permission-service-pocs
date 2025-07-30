#export KETO_READ_REMOTE="127.0.0.1:4466"

# Dette flagget må legges til hver kommando (uten TLS) --insecure-disable-transport-security

alias keto="docker run -it --network keto_default -e KETO_READ_REMOTE=\"keto:4466\" -v ./keto-container:/home/keto/mount oryd/keto:latest "
