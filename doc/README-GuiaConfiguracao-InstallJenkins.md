# README-GuiaConfiguracao-InstallJenkins.md


## 1. Introdução ##

O objetivo deste guia de configuração é **Instalar do Jenkins no Windows**. 



### 2. Premissas ###

* Máquina com Sistema Operacional **Windows**
* Conexão de internet: download e instalação dos plugins sugeridos


### 3. Passo-a-passo ###

### 3.1. download do binário de instalação do Jenkins de acordo com sistema operacional (windows)  ###

[Download Jenkins - preferência LTS](https://jenkins.io/download/)



### 3.2. Configuração inicial, instalação e atualização dos plugins mais usados ###

  * descompactar o binário de instalação em um diretório

![Instal-Jenkins-Windows-01.png](images/Instal-Jenkins-Windows-01.png)

![Instal-Jenkins-Windows-02.png](images/Instal-Jenkins-Windows-02.png)
  
  * executar o binário de instalação 'jenkins.msi'

![Instal-Jenkins-Windows-03.png](images/Instal-Jenkins-Windows-03.png)

  * aceitar a sugestão do aplicativo e definir o diretório destino Ex: `C:\Program Files (x86)\Jenkins\`. Clique em `next` ... `next` até o `finish`.

![Instal-Jenkins-Windows-04.png](images/Instal-Jenkins-Windows-04.png)

![Instal-Jenkins-Windows-05.png](images/Instal-Jenkins-Windows-05.png)

![Instal-Jenkins-Windows-06.png](images/Instal-Jenkins-Windows-06.png)

  * acesse o Jenkins pela primeira vez pelo browser
  * copie e cole no campo password o conteúdo do arquivo `C:\Program Files (x86)\Jenkins\secrets\initialAdminPassword` que contém o hash da senha do Jenkins 

![Instal-Jenkins-Windows-07.png](images/Instal-Jenkins-Windows-07.png)

  * instale os plugins sugeridos

![Instal-Jenkins-Windows-08.png](images/Instal-Jenkins-Windows-08.png)

![Instal-Jenkins-Windows-09.png](images/Instal-Jenkins-Windows-09.png)

  * crie o usuário de administração

![Instal-Jenkins-Windows-10.png](images/Instal-Jenkins-Windows-10.png)

  * Configure Jenkins URL

![Instal-Jenkins-Windows-11.png](images/Instal-Jenkins-Windows-11.png)

  * Pronto! Benvindo ao Jenkins

![Instal-Jenkins-Windows-12.png](images/Instal-Jenkins-Windows-12.png)

![Instal-Jenkins-Windows-13.png](images/Instal-Jenkins-Windows-13.png)


### 3.3 Entendendo como iniciar, parar e iniciar automaticamente o serviço Windows do Jenkins ###

  * Executar o comando: services.msc
  * Clicar no botão parar / iniciar conforme a operação desejada

![Services-Start-Stop](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/images/services-start-stop-01.png) 


## Referências ##

* n/a
