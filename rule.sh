cd /etc/XrayR
wget https://raw.githubusercontent.com/kevlau1/rulelist/main/rulelist
sudo sed -i 's/RuleListPath:/RuleListPath: \/etc\/XrayR\/rulelist/g' /etc/XrayR/config.yml
xrayr restart
