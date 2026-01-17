# Lab1
- Criação de grupos

Comandos:

sudo groupadd desenvolvedores
sudo groupadd testadores

- Verificação de criação
  
 cat /etc/group | grep -E "desenvolvedores|testadores"

 Resultado:

 desenvolvedores:x:1001:
 testadores:x:1002:

 - Criação de Usuários

  Comandos:

sudo useradd -m -g desenvolvedores dev_senior
sudo useradd -m -g desenvolvedores dev_junior
sudo useradd -m -g testadores qa_analyst
sudo usermod -aG testadores dev_senior

-  Verificação de criação de Usuários

  cat /etc/passwd | grep -E "dev_senior|dev_junior|qa_analyst"

   Resultado:
   
  dev_senior:x:1001:1001::/home/dev_senior:bin/sh
  dev_junior:x:1002:1001::/home/dev_junior:bin/sh
  qa_analyst:x:1003:1002::/home/qa_analyst:bin/sh

  - Definição de Senhas
   
  Comando:
  
  sudo passwd nome_do_usuario

  Resultado:

  New Password: *****

  - Estrutura de Diretórios

    Comandos:
    
   sudo mkdir -p /srv/projetos/backend
   sudo mkdir -p /srv/projetos/frontend

   - Verificar estrutura de diretórios: 
   
    sudo ls -l /srv/projetos

     Resultado:

     /srv/projetos: backend frontend

     - Gerenciamento de Permissões
    
     Comando:
     
     sudo chown -R dev_senior:desenvolvedores /srv/projetos
     sudo chmod -R 750 /srv/projetos

     Verificação:
     
       ls -l /srv/

     Resultado:

     total 4
     drwr - x --- 4 root root 4096 Jan 15 09:10

  - Controle de Processos

      Comando:

      su - dev_junior

    Resultado:

    sleep 500 &
    ps aux | grep sleep
    dev_jun+ 5428 0.0 0.0 8288 2068 pts/0 s  13:03 0:00 sleep 500
    dev_jun+ 5430 0.0 0.0 9144 2284 pts/0 s+  13:03 0:00 grep sleep 

 - Shell Script de Boas-Vindas

   Comando:

   sudo chmod 755 / usr/local/bin/boasvindas.sh

   Resultado:

   Após realizar login apresenta mensagem de boas vindas.

    
 

  

  

  
  
 
