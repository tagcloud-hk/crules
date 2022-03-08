#!/bin/bash
git submodule update --remote

# classical
cp clash-rules/applications.txt classical/applications.txt

# ipcidr
cp clash-rules/cncidr.txt ipcidr/cncidr.txt
cp clash-rules/lancidr.txt ipcidr/lancidr.txt
cp clash-rules/telegramcidr.txt ipcidr/telegramcidr.txt

# domain
cp clash-rules/apple.txt domain/apple.txt
cp clash-rules/direct.txt domain/direct.txt
cp clash-rules/gfw.txt domain/gfw.txt
cp clash-rules/google.txt domain/google.txt
cp clash-rules/greatfire.txt domain/greatfire.txt
cp clash-rules/icloud.txt domain/icloud.txt
cp clash-rules/private.txt domain/private.txt
cp clash-rules/proxy.txt domain/proxy.txt
cp clash-rules/reject.txt domain/reject.txt
cp clash-rules/tld-not-cn.txt domain/tld-not-cn.txt

git add .
git commit -m "auto push"
git push origin --all
