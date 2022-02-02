#!/bin/bash
#
# gen_pass.sh [<Password Length>]
# David King<david.king@spidertaffy.com>
#
# Generate a random password.

run() {
  make_password $1
}

make_password() {
  MATRIX="23456789ABCDEFGHJKLMNPRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
  LENGTH=$1
  LENGTH=${LENGTH:='12'}
  while [ "${n:=1}" -le "$LENGTH" ]
    do
      PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
      let n+=1
      PASSWORD=$PASS
    done
  echo $PASSWORD
}

run $1
