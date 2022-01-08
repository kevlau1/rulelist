cd /etc/XrayR
wget https://github.com/kevlau1/vpstoolbox/blob/main/rulelist
sudo sed -i 's/RuleListPath:/RuleListPath: \/etc\/XrayR\/rulelist/g' /etc/XrayR/config.yml
xrayr restart