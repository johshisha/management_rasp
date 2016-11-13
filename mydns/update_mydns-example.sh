#!/bin/bash
user=user
pass=pass
#wget --http-user=${user} --http-passwd=${pass} http://www.mydns.jp/login.html
curl --user $user:$pass http://www.mydns.jp/login.html
