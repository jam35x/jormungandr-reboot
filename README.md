# Jormungandr systemd configuration

## To run Jormungandr in the background when machine starts (do the following in the terminal)

Paste the contents of [jormun.service](jormun.service) here:
```sudo nano /etc/systemd/system/jormun.service```
and edit the path.

Enable systemd service to start when machine starts:
```sudo systemctl enable jormun```

start jormungandr in background:
```sudo systemctl start jormun```

To stop and check status use below commands in terminal:
```
# to stop
sudo systemctl stop jormun
# check status of the service
sudo systemctl status jormun
# to restart
sudo systemctl restart jormun
```

## To run restart script when Jormungandr gets stuck

Paste the contents of [jormun_reboot.service](jormun_reboot.service) here:
```sudo nano /etc/systemd/system/jormun_reboot.service```

Copy the [restart.sh](restart.sh) script to your machine and edit the path in jormun_reboot.service file.

Enable systemd service to start when machine starts:
```sudo systemctl enable jormun_reboot```

start jormungandr restart script in background:
```sudo systemctl start jormun_reboot```

To stop and check status use below commands in terminal:
```
# to stop
sudo systemctl stop jormun_reboot
# check status of the service
sudo systemctl status jormun_reboot
# to restart
sudo systemctl restart jormun_reboot
```
