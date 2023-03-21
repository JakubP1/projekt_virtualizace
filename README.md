# Projekt virtualizace navrhy řešení:

## 1) Využití virtualizace typu 1 (ESXi)- on premise
- vytvoření hostovského VM (Debian 11, Ubuntu Server 22.04 LTS)
- spuštění instance VM pomocí PowerCLI skriptu na dobu 5h 
- instalace požadovaných služeb(Chromium, Puppeteer VPN, Node.js, xrdp) na virtuální systém pomocí skriptu **setup_script.sh**
- vytvoření inicializačního skriptu **start_services.sh** , který se spustí po spuštění VM(spuštení Nodejs a xrdp)

## 2) Využití virtualizace typu 2(VBox) - on premise
- vytvoření hostovského VM (Debian 11, Ubuntu Server 22.04 LTS)
- spuštení VM z příkazové řádky pomoci VBoxManager pomocí skriptu
- instalace požadovaných služeb(Chromium, Puppeteer VPN, Node.js, xrdp) na virtuální systém pomocí skriptu **setup_script.sh**
- vytvoření inicializačního skriptu **start_services.sh** , který se spustí po spuštění VM(spuštení Nodejs a xrdp)
- nasazení VM image pomoci sdileného síťového disku

## 3) Využití cloudové služby AWS (EC2)

