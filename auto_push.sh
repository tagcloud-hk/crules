!/bin/bash
cd clash-rules
git switch release
git pull

cd ..


#
# srvdir="/etc/openclash/rule_provider/"


# classical
cp clash-rules/applications.txt rule_provider/classical/applications.txt

# ipcidr
cp clash-rules/cncidr.txt rule_provider/ipcidr/cncidr.txt
cp clash-rules/lancidr.txt rule_provider/ipcidr/lancidr.txt
cp clash-rules/telegramcidr.txt rule_provider/ipcidr/telegramcidr.txt

# domain
cp clash-rules/apple.txt rule_provider/domain/apple.txt
cp clash-rules/direct.txt rule_provider/domain/direct.txt
cp clash-rules/gfw.txt rule_provider/domain/gfw.txt
cp clash-rules/google.txt rule_provider/domain/google.txt
cp clash-rules/greatfire.txt rule_provider/domain/greatfire.txt
cp clash-rules/icloud.txt rule_provider/domain/icloud.txt
cp clash-rules/private.txt rule_provider/domain/private.txt
cp clash-rules/proxy.txt rule_provider/domain/proxy.txt
cp clash-rules/reject.txt rule_provider/domain/reject.txt
cp clash-rules/tld-not-cn.txt rule_provider/domain/tld-not-cn.txt


scp -r rule_provider/* root@openwrt:/etc/openclash/rule_provider/

git add .
git commit -m "auto push"
git push origin --all
