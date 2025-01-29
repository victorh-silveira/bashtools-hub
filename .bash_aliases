# Alias para configurar aliases
alias alias-config='sudo nano ~/.bash_aliases'    # Edita o arquivo de aliases
alias reload-bash='source ~/.bashrc'             # Recarrega o bash
alias alias-list='cat ~/.bash_aliases'           # Exibe os aliases configurados

# Alias para navegação
alias list-long='ls -lha --color=auto'           # Listagem detalhada com tamanhos legíveis
alias list-columns='ls -CF --color=auto'         # Listagem com diretórios destacados
alias dir-up='cd ..'                             # Sobe um nível no diretório
alias dir-up2='cd ../..'                         # Sobe dois níveis no diretório
alias go-home='cd ~'                             # Vai para o diretório home
alias clear-screen='clear'                       # Limpa a tela

# Alias para gestão de arquivos
alias move-safe='mv -i'                          # Proteção contra sobrescrita ao mover
alias copy-safe='cp -i'                          # Proteção contra sobrescrita ao copiar
alias remove-safe='rm -i'                        # Proteção contra exclusão acidental

# Alias para atualização do sistema
alias system-update='sudo apt update && sudo apt upgrade -y' # Atualiza o sistema
alias system-clean='sudo apt autoremove -y && sudo apt clean' # Remove pacotes desnecessários

# Alias para gestão de pacotes
alias package-install='sudo apt install -y'      # Instala pacotes
alias package-remove='sudo apt remove -y'        # Remove pacotes
alias package-purge='sudo apt purge -y'          # Remove pacotes e configuração

# Alias para pesquisa de pacotes
alias package-search='apt search'                # Pesquisa pacotes

# Outros aliases úteis
alias history-list='history | less'              # Mostra o histórico com paginação
alias grep-highlight='grep --color=auto'         # Ativa a coloração no grep
alias disk-usage='df -h'                         # Mostra uso do disco em formato legível
alias dir-usage='du -h --max-depth=1'            # Uso de espaço em um nível de diretório
alias screenshot='flameshot gui'                 # Captura de tela

# Alias para rede e conectividade
alias ip-config='ip a'                           # Exibe informações de rede
alias netstat-show='ss -tuln'                    # Conexões de rede abertas
alias routes-list='ip r'                         # Tabela de roteamento
alias ports-show='sudo netstat -tulanp'          # Portas abertas com processos
alias ping-test='ping -c 5'                      # Envia 5 pacotes de ping
alias ping-fast='ping -c 100 -i 0.2'             # Pings rápidos
alias public-ip='curl -s ifconfig.me'            # Mostra IP público
alias dhcp-release='sudo dhclient -r'            # Libera DHCP
alias dhcp-renew='sudo dhclient'                 # Renova DHCP

# Alias para Kali Linux
alias wireshark-start='sudo wireshark'           # Inicia o Wireshark com root
alias monitor-on='sudo airmon-ng start wlan0'    # Ativa o modo monitor em wlan0
alias monitor-off='sudo airmon-ng stop wlan0mon' # Desativa o modo monitor
alias airodump-capture='sudo airodump-ng wlan0mon' # Captura pacotes com airodump-ng
alias metasploit-start='sudo msfconsole'         # Inicia o Metasploit Framework
alias metasploit-update='sudo msfupdate'         # Atualiza o Metasploit Framework
alias nmap-fast='sudo nmap -T4 -F'               # Scan rápido com Nmap
alias nmap-ports='sudo nmap -p-'                 # Escaneia todas as portas
alias nessus-start='sudo /etc/init.d/nessusd start' # Inicia o Nessus
alias burp-suite='sudo burpsuite'                # Inicia o Burp Suite com root
alias sqlmap-run='sqlmap'                        # Inicia o SQLmap
alias tcpdump-capture='sudo tcpdump -i any -nn'  # Captura pacotes em todas as interfaces
alias hydra-run='hydra'                          # Executa o Hydra para força bruta
alias network-restart="sudo systemctl restart NetworkManager" #Comando para reiniciar placa de rede

# Alias para UNIFI Network Controller
alias unifi-start='sudo service unifi start'     # Inicia o Unifi Network Controller
alias unifi-restart='sudo service unifi restart' # Reinicia o Unifi
alias unifi-status='sudo service unifi status'   # Verifica o status do Unifi
alias unifi-stop='sudo service unifi stop'       # Para o Unifi

# Alias para Docker
alias docker-ps='docker ps'                      # Containers em execução
alias docker-ps-all='docker ps -a'               # Todos os containers
alias docker-images='docker images'              # Lista de imagens
alias docker-build='docker build -t'             # Builda imagem
alias docker-run='docker run -it --rm'           # Executa container interativo
alias docker-exec='docker exec -it'              # Executa comando em container
alias docker-stop='docker stop'                  # Para container
alias docker-remove='docker rm'                  # Remove container
alias docker-remove-image='docker rmi'           # Remove imagem
alias docker-logs='docker logs -f'               # Exibe logs de container
alias docker-prune='docker system prune -f'      # Remove recursos não utilizados

# Alias para Kubernetes
alias kubernetes='kubectl'                       # Atalho para kubectl
alias kubernetes-pods='kubectl get pods'         # Lista pods
alias kubernetes-services='kubectl get services' # Lista serviços
alias kubernetes-nodes='kubectl get nodes'       # Lista nós
alias kubernetes-context='kubectl config use-context' # Troca de contexto
alias kubernetes-desc='kubectl describe'         # Descreve recurso
alias kubernetes-delete='kubectl delete'         # Remove recurso
alias kubernetes-apply='kubectl apply -f'        # Aplica configuração de arquivo YAML
alias kubernetes-logs='kubectl logs -f'          # Exibe logs de pod

# Alias para Azure CLI
alias azure-login='az login'                    # Login no Azure
alias azure-logout='az logout'                  # Logout do Azure
alias azure-groups='az group list'              # Lista grupos de recursos
alias azure-vms='az vm list -d -o table'        # Lista VMs
alias azure-aks='az aks list -o table'          # Lista clusters AKS

# Alias para AWS CLI
alias aws-login='aws configure'                 # Configura AWS CLI
alias aws-ec2='aws ec2 describe-instances'      # Lista instâncias EC2
alias aws-s3='aws s3 ls'                        # Lista buckets S3
alias aws-billing='aws ce get-cost-and-usage'   # Relatório de custos

# Alias para Terraform
alias terraform-init='terraform init'           # Inicializa Terraform
alias terraform-plan='terraform plan'           # Mostra plano de execução
alias terraform-apply='terraform apply'         # Aplica configurações
alias terraform-destroy='terraform destroy'     # Destrói infraestrutura

# Alias para Ansible
alias ansible-inventory='ansible-inventory --list -y' # Lista inventário em YAML
alias ansible-play='ansible-playbook'           # Executa playbook
alias ansible-check='ansible-playbook --check'  # Faz check dry-run de playbook

# Alias para DevSecOps
alias trivy-scan='trivy image'                  # Escaneia vulnerabilidades de imagem Docker
alias checkov-scan='checkov -d .'               # Escaneia infraestrutura como código
alias snyk-test='snyk test'                     # Testa código e dependências por vulnerabilidades
alias owasp-zap='zap-cli start'                 # Inicia OWASP ZAP
alias bandit-scan='bandit -r .'                 # Escaneia código Python para vulnerabilidades
alias grype-scan='grype'                        # Escaneia vulnerabilidades em imagens
alias tfsec-scan='tfsec .'                      # Analisa segurança de configurações Terraform
alias helm-lint='helm lint'                     # Lint para charts Helm
alias kubernetes-scan='kubectl krew install kscan' # Scanner de segurança para clusters Kubernetes
alias vscode='code'				# Abre qualquer arquivo no VSCode

# Alias para API da Predictus
alias pred-xlsx='python /home/victor-silveira/Documentos/GitHub/build-and-references/leads-predictus/arquivos-embargos-fiscal/predictus-embargosFiscal.py' # Executa o arquivo .PY da Predictus para garar o .XLSX

