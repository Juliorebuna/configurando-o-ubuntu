#!/data/data/com.termux/files/usr/bin/bash

# Variáveis
REPO_URL="https://github.com/Juliorebuna"
BANNER="Ubuntu em Português"

# Verifica e exclui a pasta ubuntu_portugues se existir
if [ -d "ubuntu_portugues" ]; then
  rm -rf ubuntu_portugues
fi
mkdir ubuntu_portugues

# Banner de instalação
echo "┍━━━»•» 🌺 «•«━━━┑"
echo "Nome: juliorebuna"
echo "Projeto: Termux do Zero"
echo "Script: $BANNER"
echo "Repositório GitHub: $REPO_URL"
echo "┕━━━»•» 🌺 «•«━━━┙"

# Instala e configura o Ubuntu
pkg update -y
pkg upgrade -y
pkg install proot-distro -y
proot-distro install ubuntu

# Instruções para o usuário
echo "Instalação do Ubuntu concluída. Use o comando 'proot-distro login ubuntu' para acessar."
echo "Após logar no Ubuntu, execute './ubuntu_portugues.sh' para concluir a configuração do idioma."
