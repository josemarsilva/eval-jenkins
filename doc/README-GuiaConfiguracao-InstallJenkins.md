# README-GuiaConfiguracao-InstallJenkins.md


## 1. Introdução ##

O objetivo deste guia de configuração:
* **Instalar do Jenkins no Windows**


### 2. Premissas ###

* n/a


### 3. Passo-a-passo ###

### 3.1. passo-01-de-03: download do binário de instalação do Jenkins de acordo com sistema operacional (windows)  ###

```html
https://jenkins.io/download/
```


### 3.2. passo-02-de-03: Configuração inicial, instalação e atualização dos plugins mais usados ###

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
```

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


### 3.3. passo-03-de-03: Entendendo como iniciar, parar e iniciar automaticamente o serviço Windows do Jenkins ###

  * Executar o comando: services.msc
  * Clicar no botão parar / iniciar conforme a operação desejada

![Services-Start-Stop](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/images/services-start-stop.png) 


## Referências ##

* n/a
