# Jormungandr systemd configuration

# To run Jormungandr in the background when system starts 
# do the following in the terminal

# Paste the contents of jormun.service here
sudo nano /etc/systemd/system/jormun.service

# Enable systemd service
sudo systemctl enable jormun

# To stop, start, and check status use below commands in terminal
sudo systemctl start jormun
sudo systemctl stop jormun
sudo systemctl status jormun
sudo systemctl restart jormun

# To run restart script when Jormungandr gets stuck

# Paste the contents of jormun_reboot.service here
sudo nano /etc/systemd/system/jormun_reboot.service

# Enable systemd service
sudo systemctl enable jormun_reboot

# To stop, start, and check status use below commands in terminal
sudo systemctl start jormun_reboot
sudo systemctl stop jormun_reboot
sudo systemctl status jormun_reboot
sudo systemctl restart jormun_reboot
