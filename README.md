fix ssh problems
```bash
sudo sed -i 's/PubkeyAuthentication no/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
```
