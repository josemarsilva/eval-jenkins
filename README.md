# eval-jenkins

# README #


## 1. Introdução ##

Este repositório projeto de avaliação da ferramenta **Jenkins**. 

### 2. Documentação ###

### 2.1. Diagrama de Caso de Uso (Use Case Diagram) ###

```image-file
./doc/UseCaseDiagram*.jpg
../../bancodemassa-doc/*
```
![UseCaseDiagram](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/images/UseCaseDiagram-01.png) 


### 2.2. Diagrama de Implantação (Deploy Diagram) ###

```image-file
./doc/DeployDiagram*.jpg
../../bancodemassa-doc/*
```
![DeployDiagram](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/images/DeployDiagram-01.png) 


### 2.3. Diagrama Modelo Banco de Dados (Database Data Model) ###

* não aplicável

## 3. Projeto ##

### 3.1. Pré-requisitos ###

* 4 GB RAM memory (at least)
* Java JDK 1.8 (não é JRE!)
* Maven 3.3 (ou superior)
* Jenkins Server (para Windows)


### 3.2. Guia para Desenvolvimento ###

* não aplicável


### 3.3. Guia para Configuração ###

#### 3.3.1. Instalação Jenkins em Windows - passo a passo ####

* passo-01-de-03: download do binário de instalação do Jenkins de acordo com sistema operacional (windows)

```html
https://jenkins.io/download/
```


* passo-02-de-03: Configuração inicial, instalação e atualização dos plugins mais usados

  * descompactar o binário de instalação em um diretório
  * executar o binário de instalação 'jenkins.msi'
  * definir o diretório destino Ex: C:\Program Files (x86)\Jenkins\
  * acesse o Jenkins pela primeira vez pelo browser
  
```browser
http://localhost:8080
```

  * copie e cole no campo password o conteúdo do arquivo (C:\Program Files (x86)\Jenkins\secrets\initialAdminPassword) que contém a senha do Jenkins 

```browser
+-------------------------------------------------------------+
| Unlock Jenkins                                              |
|    :       :                                                |
| C:\Program Files (x86)\Jenkins\secrets\initialAdminPassword |
| Administrator password                                      | 
| [                   ]                                       | <- paste here
+-------------------------------------------------------------+
```

  * instale os plugins sugeridos

```browser
+------------------------------------------------+
| Customize Jenkins                              |
| +------------------+                           |
| |Install Suggested |                           |
| | Pluggins         |                           | <- click button
| +------------------+                           |
+------------------------------------------------+
```browser

  * crie o usuário de administração

```browser
+------------------------------------------------+
| Create first admin user                        |
|   Username: [admin]                            |
|   Password: [admin]                            |
|   E-mail:   [admin@jenkins.com]                | <- click button Save and Continue
+------------------------------------------------+
```

  * Configure Jenkins URL

```browser
+------------------------------------------------+
|   Jenkins URL: [http://localhost:8080/]        | <- click button Save and Finish
+------------------------------------------------+
```

  * Pronto! Benvindo ao Jenkins


* passo-03-de-03: Entendendo como iniciar, parar e iniciar automaticamente o serviço Windows do Jenkins

  * Executar o comando: services.msc
  * Clicar no botão parar / iniciar conforme a operação desejada

![Services-Start-Stop](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/images/services-start-stop.png) 



### 3.4. Guia para Teste ###

* não aplicável


### 3.5. Guia para Implantação ###

* n/a - Este projeto contém apenas documentação e diagramas


### 3.6. Guia para Demonstração ###

#### [3.6.1. Installação Plugins](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/README-GuiaDemonstracao-InstallPlugins.md)  ####
#### [3.6.2. Novo Job tipo Pipeline Executar Windows Script (.bat)](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/README-GuiaDemonstracao-JobNewSimpleBatJob.md)  ####
#### [3.6.3. Novo Job tipo Pipeline Powershell Script baixado automaticamente do GitHub ](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/README-GuiaDemonstracao-JobPowerShellScript.md)  ####
#### [3.6.4. Novo Job tipo Pipeline Executar Windows Script (.bat) baixado automaticamente do GitHub ](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/README-GuiaDemonstracao-JobBatScript.md)  ####

## Referências ##

* Instalação
  * https://jenkins.io/download/

* Veja também: 
  * http://josemarfuregattideabreusilva.blogspot.com/2017/11/install-jenkins-on-ubuntu-1604.html
  * http://josemarfuregattideabreusilva.blogspot.com/2016/06/installing-jenkins-centos-65.html
