#!/usr/bin/env bash

keto() {
  docker run \
    -it \
    --network keto_default \
    -e KETO_READ_REMOTE=keto:4466 \
    -e KETO_WRITE_REMOTE=keto:4467 \
    -v ./keto-container:/home/keto/mount oryd/keto:latest \
    $@ \
    --insecure-disable-transport-security
}

set -f

echo "keto check \"*\" view Schema 50; expect Denied"
keto check "*" view Schema 50

echo "keto check \"*\" edit Schema 50; expect Denied"
keto check "*" edit Schema 50

echo "keto check \"julius\" view Schema 50; expect Allowed"
keto check "julius" view Schema 50

echo "keto check \"julius\" edit Schema 50; expect Denied"
keto check "julius" edit Schema 50

echo "keto check \"sjefen\" view Schema 50; expect Allowed"
keto check "sjefen" view Schema 50
echo "keto check \"sjefen\" edit Schema 50; expect Allowed"
keto check "sjefen" edit Schema 50
