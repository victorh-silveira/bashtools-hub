# ==============================================
# GERENCIAMENTO DE ALIASES
# ==============================================
alias alias-config='sudo nano ~/.bash_aliases'                  # Edita o arquivo de aliases
alias reload-bash='source ~/.bashrc'				                    # Recarrega o bash
alias alias-list='cat ~/.bash_aliases'            	            # Exibe os aliases configurados

# ==============================================
# NAVEGAÇÃO E GERENCIAMENTO DE ARQUIVOS
# ==============================================
alias ll='ls -lha --color=auto'                                 # Listagem detalhada com tamanhos legíveis
alias lc='ls -CF --color=auto'                                  # Listagem com diretórios destacados
alias ..='cd ..'                                                # Sobe um nível no diretório
alias ...='cd ../..'                                            # Sobe dois níveis no diretório
alias ~='cd ~'                                                  # Vai para o diretório home
alias cl='clear'                                                # Limpa a tela

# Proteção contra sobrescrita/exclusão acidental
alias mv='mv -i'                                                # Move com confirmação
alias cp='cp -i'                                                # Copia com confirmação
alias rm='rm -i'                                                # Remove com confirmação

# ==============================================
# ATUALIZAÇÃO E GERENCIAMENTO DE PACOTES
# ==============================================
alias system-update='sudo apt update && sudo apt upgrade -y'    # Atualiza o sistema
alias system-clean='sudo apt autoremove -y && sudo apt clean'   # Remove pacotes desnecessários

alias apt-install='sudo apt install -y'                         # Instala pacotes
alias apt-remove='sudo apt remove -y'                           # Remove pacotes
alias apt-purge='sudo apt purge -y'                             # Remove pacotes e configurações
alias apt-search='apt search'                                   # Pesquisa pacotes

# ==============================================
# GERENCIAMENTO DE PACOTES FLATPAK
# ==============================================
alias flatpak-install='flatpak install -y'                      # Instala pacotes Flatpak
alias flatpak-remove='flatpak uninstall -y'                     # Remove pacotes Flatpak
alias flatpak-update='flatpak update -y'                        # Atualiza todos os pacotes Flatpak
alias flatpak-list='flatpak list'                               # Lista pacotes instalados
alias flatpak-search='flatpak search'                           # Pesquisa pacotes Flatpak

# ==============================================
# REDE E CONECTIVIDADE
# ==============================================
alias ipinfo='ip a'                                             # Exibe informações de rede
alias netstat='ss -tuln'                                        # Conexões de rede abertas
alias routes='ip r'                                             # Tabela de roteamento
alias ports='sudo netstat -tulanp'                              # Portas abertas com processos
alias ping='ping -c 5'                                          # Envia 5 pacotes de ping
alias fastping='ping -c 100 -i 0.2'                             # Pings rápidos
alias myip='curl -s ifconfig.me'                                # Mostra IP público
alias dhcprenew='sudo dhclient'                                 # Renova DHCP
alias dhcprelease='sudo dhclient -r'                            # Libera DHCP

# ==============================================
# FERRAMENTAS DE SEGURANÇA (KALI LINUX)
# ==============================================
alias wireshark='sudo wireshark'                                # Inicia o Wireshark com root
alias monon='sudo airmon-ng start wlan0'                        # Ativa o modo monitor em wlan0
alias monoff='sudo airmon-ng stop wlan0mon'                     # Desativa o modo monitor
alias airodump='sudo airodump-ng wlan0mon'                      # Captura pacotes com airodump-ng
alias msfconsole='sudo msfconsole'                              # Inicia o Metasploit Framework
alias msfupdate='sudo msfupdate'                                # Atualiza o Metasploit Framework
alias nmapfast='sudo nmap -T4 -F'                               # Scan rápido com Nmap
alias nmapfull='sudo nmap -p-'                                  # Escaneia todas as portas
alias sqlmap='sqlmap'                                           # Inicia o SQLmap
alias tcpdump='sudo tcpdump -i any -nn'                         # Captura pacotes em todas as interfaces
alias hydra='hydra'                                             # Executa o Hydra para força bruta
alias netrestart='sudo systemctl restart NetworkManager'        # Reinicia a placa de rede

# ==============================================
# DOCKER
# ==============================================
alias docker-ps='docker ps'                                     # Containers em execução
alias docker-psa='docker ps -a'                                 # Todos os containers
alias docker-images='docker images'                             # Lista de imagens
alias docker-build='docker build -t'                            # Builda imagem
alias docker-run='docker run -it --rm'                          # Executa container interativo
alias docker-exec='docker exec -it'                             # Executa comando em container
alias docker-stop='docker stop'                                 # Para container
alias docker-rm='docker rm'                                     # Remove container
alias docker-rmi='docker rmi'                                   # Remove imagem
alias docker-logs='docker logs -f'                              # Exibe logs de container
alias docker-prune='docker system prune -f'                     # Remove recursos não utilizados

# ==============================================
# KUBERNETES
# ==============================================
alias kuber='kubectl'                                           # Atalho para kubectl
alias kuber-pods='kubectl get pods'                             # Lista pods
alias kuber-svc='kubectl get services'                          # Lista serviços
alias kuber-nodes='kubectl get nodes'                           # Lista nós
alias kuber-ctx='kubectl config use-context'                    # Troca de contexto
alias kuber-desc='kubectl describe'                             # Descreve recurso
alias kuber-del='kubectl delete'                                # Remove recurso
alias kuber-apply='kubectl apply -f'                            # Aplica configuração de arquivo YAML
alias kuber-logs='kubectl logs -f'                              # Exibe logs de pod

# ==============================================
# DEVSECOPS
# ==============================================
alias trivy='trivy image'                                       # Escaneia vulnerabilidades de imagem Docker
alias checkov='checkov -d .'                                    # Escaneia infraestrutura como código
alias grype='grype'                                             # Escaneia vulnerabilidades em imagens
alias tfsec='tfsec .'                                           # Analisa segurança de configurações Terraform
alias helm-lint='helm lint'                                     # Lint para charts Helm
alias kscan='kubectl krew install kscan'                        # Scanner de segurança para clusters Kubernetes
