# README-GuiaDemonstracao-JobBatScript


## 1. Introdução ##

O objetivo desta demonstração é ensinar:
* criar no Jenkins um novo _Job_ do tipo _pipeline_ que execute um Windows (.bat) script

### 2. Premissas ###

* n/a

### 3. Passo-a-passo ###

### 3.2. Criar um Job para executar o Windows (.bat) script ###

* Logado no Jenkins clique na opção de menu lateral "Jenkins >> Novo Job"
* Preencha o novo Job com as seguintes informações e conteúdo do script groovy abaixo:

```html
+--------------------------------------------------------------------------------+
| Jenkins                                                                        |
|  :                                                                             |
| Enter an item name: [ Pipeline-Bat-Script ]                                    |
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
| Pipeline:                                                                      |
|   [X] Este build é parametrizado                                               |
|       [Adicionar Parametro - Parâmetro String]                                 |
|       Nome        : [ arg              ]                                       |
|       Valor Padrão: [ arg              ]                                       |
|       Descrição   : [ Argumento        ]                                       |
|                                                                                |
| [X] GitHub project                                                             |
|     Project Url:  [ https://github.com/josemarsilva/eval-jenkins/ ]            |
|                                                                                |
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
    bat ".\\src\\bat\\helloworld.bat arg1 arg2"
  }

  stage('Finished!'){
    echo "Finished ."
  }
}
```


### 3.3. Executar o Script ###

* Logado no Jenkins clique na opção de menu lateral "_Jenkins >> Tudo_" Então uma lista com todos os "_Jobs_" será apresentada 
* Clique no link que navega para o _Job_ **Pipeline-Bat-Script** Então um formulário de detalhamento do "_Job_" será apresentado
* Clique no link do botão lateral esquerdo identificado por "_Construir com parâmetros_" Então um formulário de confirmação de execução com parâmetros será apresentado
* Observe que o parâmetro args está vindo com uma sugestão de valor default
* Clique no botão construir Então uma nova execução deverá aparecer no histórico de builds com a data e hora corrente
* Clique no ícone bolinha colorida da cor (azul ou vermelho) para ver o log da console de execução




## Referências ##

* https://hodgkins.io/automating-with-jenkins-and-powershell-on-windows-part-1
