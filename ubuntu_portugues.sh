#!/data/data/com.termux/files/usr/bin/bash

# Banner de configuração
echo "┍━━━»•» 🌺 «•«━━━┑"
echo "Configurando o Ubuntu para o idioma português"
echo "┕━━━»•» 🌺 «•«━━━┙"

# Entrar no Ubuntu e configurar
proot-distro login ubuntu <<EOF
apt update -y
apt upgrade -y
apt install sudo -y
sudo apt install locales -y

# Gerar e configurar o idioma português
sudo locale-gen pt_BR.UTF-8
sudo update-locale LANG=pt_BR.UTF-8

# Exportar as variáveis de ambiente
export LANG=pt_BR.UTF-8
export LANGUAGE=pt_BR:pt
export LC_CTYPE=pt_BR.UTF-8
export LC_NUMERIC=pt_BR.UTF-8
export LC_TIME=pt_BR.UTF-8
export LC_COLLATE=pt_BR.UTF-8
export LC_MONETARY=pt_BR.UTF-8
export LC_MESSAGES=pt_BR.UTF-8
export LC_PAPER=pt_BR.UTF-8
export LC_NAME=pt_BR.UTF-8
export LC_ADDRESS=pt_BR.UTF-8
export LC_TELEPHONE=pt_BR.UTF-8
export LC_MEASUREMENT=pt_BR.UTF-8
export LC_IDENTIFICATION=pt_BR.UTF-8
export LC_ALL=

# Aplicar as configurações
sudo dpkg-reconfigure locales
exit
EOF

# Instruções para o usuário
echo "Reinicie o Ubuntu para aplicar as configurações de idioma."
