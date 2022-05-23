fix ssh problems
```bash
sudo sed -i 's/#PubkeyAuthentication no/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
```
```bash
# indent-rainbow - позволяет видеть tab и пробелы
# material-icon-theme - меняет значки в explorer на более читаемые
# helm-intellisense - Extension to help writing Helm
# gitlens - удобная штука для работы с git
```