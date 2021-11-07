#!/bin/bash

# Need to encrypt first
# gpg --symmetric --cipher-algo AES256 my_secret.txt
# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$DOORBELL" \
--output $HOME/secrets/my_secret.txt my_secret.gpg
