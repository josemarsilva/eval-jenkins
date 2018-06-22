# README-GuiaDemonstracao-JobPowerShellScript


## 1. Introdução ##

O objetivo desta demonstração é ensinar:
* criar no Jenkins um novo _Job_ do tipo _pipeline_ que baixe automaticamente o código powershell do GitHub e em seguida execute o script baixado

### 2. Premissas ###

* Powershell instalado na máquina de execução
* Conectividade com Internet (para baixar o código fonte do GitHub)
* Conta ativa no GitHub

### 3. Passo-a-passo ###

### 3.2. Criar um Job para executar o script Powershell armazenado no GitHub ###

* Logado no Jenkins clique na opção de menu lateral "Jenkins >> Novo Job"
* Preencha o novo Job com as seguintes informações e conteúdo do script groovy abaixo:

```html
+--------------------------------------------------------------------------------+
| Jenkins                                                                        |
|  :                                                                             |
| Enter an item name: Repeat-Please-Script                                       |
| Pipeline:                                                                      |
|   [X] Este build é parametrizado                                               |
|       [Adicionar Parametro - Parâmetro String]                                 |
|       Nome        : [ times        ]                                           |
|       Valor Padrão: [ 1            ]                                           |
|       Descrição   : [ 'n' Times repeat ]                                       |
| Description:                                                                   |
|   Definition: [Pipeline Script]                                                |
|   Script:     [               ] <- Script Groovy abaixo                        |
+--------------------------------------------------------------------------------+
```

* Script Groovy

```groovy
```


### 3.3. Executar o Script ###

* Logado no Jenkins clique na opção de menu lateral "Jenkins >> Tudo" Então uma lista com todos os _Jobs_ será apresentada 
* Clique no link que navega para o _Job_ **HelloWorldBat** Então um formulário de detalhamento do _Job_ será apresentado
* Clique no link do botão lateral esquerdo identificado por "Construir com parâmetros" Então um formulário de confirmação de execução com parâmetros será apresentado
* Observe que o parâmetro args está vindo com uma sugestão de valor default
* Clique no botão construir Então uma nova execução deverá aparecer no histórico de builds com a data e hora corrente

![PipelineHelloWorldBat-Construir](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/images/PipelineHelloWorldBat-Construir(1).png) 

* Clique no ícone bolinha colorida da cor (azul ou vermelho) para ver o log da console de execução

![PipelineHelloWorldBat-Construir](https://github.com/josemarsilva/eval-jenkins/blob/master/doc/images/PipelineHelloWorldBat-Construir(2).png) 



## Referências ##

* n/a
