# README-GuiaDemonstracao-JobExecucaoPeriodica.md


## 1. Introdução ##

O objetivo desta demonstração é ensinar:
* criar no Jenkins um novo _Job_ do tipo _pipeline_ que execute *periodicamente de 15 em 15 minutos* um Windows (.bat) script

### 2. Premissas ###

* Conectividade com Internet para download do código fonte do GitHub

### 3. Passo-a-passo ###

### 3.2. Criar um Job para executar o Windows (.bat) script ###

* Logado no Jenkins clique na opção de menu lateral `Jenkins >> Novo Job`
* Preencha o novo Job com as seguintes informações e conteúdo do script groovy abaixo:

```html
+--------------------------------------------------------------------------------+
| Jenkins                                                                        |
|  :                                                                             |
| Enter an item name: [ Pipeline-Periodico-(15-em-15)-Bat-Script ]               |
| [Pipeline] <- Escolha esta opção                                               |
|  :                                                                             |
| +----+                                                                         |
| | OK | <- Clique aqui                                                          |
| +----+                                                                         |
+--------------------------------------------------------------------------------+
```

* Complete a configuração do Job conforme abaixo:

```html
+--------------------------------------------------------------------------------+
| [X] GitHub project                                                             |
|     Project Url:  [ https://github.com/josemarsilva/eval-jenkins/ ]            |
| Build Triggers:                                                                |
|   [X] Construir Periodicamente                                                 |
|       [ # MINUTE HOUR DAY-OF-MONTH MONTH DAY-OF-WEEK(0:Dom-7:Dom)        ]     |
|       [ 15,30,45,00 * * * *                                              ]     |
|                                                                                |
|   Definition: [Pipeline Script]                                                |
|   Script:     [               ] <- Script Groovy abaixo                        |
+--------------------------------------------------------------------------------+
```

* Script Groovy

```groovy
node('master'){
    
  stage('Initialize'){
    echo "Inicializando ..."
    bat "cd"
  }

  stage('Check-out'){
    echo "Checking-out source code from git repository ..."
    git branch: 'master', url: 'https://github.com/josemarsilva/eval-jenkins.git'
  }

  stage('Change-directory'){
    echo "Change directory  ..."
    bat "cd ${WORKSPACE}"
  }

  stage('Execute-Bat-Script'){
    echo "Execute (.bat) script ..."
    bat ".\\src\\bat\\helloworld.bat periodico_15_em_15_minutos"
  }

  stage('Finished!'){
    echo "Finished ."
  }
}
```


### 3.3. Executar o Script ###

* Logado no Jenkins clique na opção de menu lateral `Jenkins >> Tudo` Então uma lista com todos os "_Jobs_" será apresentada 
* Clique no link que navega para o _Job_ **Pipeline-Periodico-(15-em-15)-Bat-Script** Então um formulário de detalhamento do "_Job_" será apresentado
* Clique no link do botão lateral esquerdo identificado por `Construir agora` Então um formulário de confirmação de execução será apresentado
* Clique no botão construir Então uma nova execução deverá aparecer no histórico de builds com a data e hora corrente
* Clique no ícone bolinha colorida da cor (azul ou vermelho) para ver o log da console de execução




## Referências ##

* https://hodgkins.io/automating-with-jenkins-and-powershell-on-windows-part-1
