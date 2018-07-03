# README-GuiaDemonstracao-JobPowerShellScript


## 1. Introdução ##

O objetivo desta demonstração é ensinar:
* criar no Jenkins um novo "_Job_" do tipo _pipeline_ que execute um script powershell 

### 2. Premissas ###

* [PowerShell plugin](https://wiki.jenkins.io/display/JENKINS/PowerShell+Plugin)

### 3. Passo-a-passo ###

### 3.2. Criar um Job para executar o script Powershell ###

* Logado no Jenkins clique na opção de menu lateral "Jenkins >> Novo Job"
* Preencha o novo Job com as seguintes informações e conteúdo do script groovy abaixo:

```html
+--------------------------------------------------------------------------------+
| Jenkins                                                                        |
|  :                                                                             |
| Enter an item name: [ Repeat-Please-Script  ]                                  |
| [Construir um projeto de software free-style] <- Escolha esta opção            |
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
|       Nome        : [ what             ]                                       |
|       Valor Padrão: [ what             ]                                       |
|       Descrição   : [ What to print    ]                                       |
|       [Adicionar Parametro - Parâmetro String]                                 |
|       Nome        : [ times            ]                                       |
|       Valor Padrão: [ 3                ]                                       |
|       Descrição   : [ 'n' Times repeat ]                                       |
|                                                                                |
| Gerenciamento de Código Fonte:                                                 |
|   [X] Git                                                                      |
|       Repository Url:  [ https://github.com/josemarsilva/eval-jenkins/ ]       |
|                                                                                |
| Build:                                                                         |
|   [Adicionar passo no build - Windows PowerShell]                              |
|                                                                                |
|   Command:     [               ] <- Script PowerShell abaixo                   |
+--------------------------------------------------------------------------------+
```

* Script PowerShell

```powershell
Write-Output "Windows PowerShell"
Write-Output "Current directory: $ENV:WORKSPACE"
Write-Output "Run PowerShell Script File using parameters:"
Write-Output ".\src\powershell\repeat-please-powershell.ps1 -what $($env:what) -times $($env:times)"
Write-Output ""
. ".\src\powershell\repeat-please-powershell.ps1" "-what" "$($env:what)" "-times" "$($env:times)"
```


### 3.3. Executar o Script ###

* Logado no Jenkins clique na opção de menu lateral "Jenkins >> Tudo" Então uma lista com todos os _Jobs_ será apresentada 
* Clique no link que navega para o "_Job_" **Repeat-Please-Script** Então um formulário de detalhamento do "_Job_" será apresentado
* Clique no link do botão lateral esquerdo identificado por "Construir com parâmetros" Então um formulário de confirmação de execução com parâmetros será apresentado
* Observe que o parâmetro args está vindo com uma sugestão de valor default
* Clique no botão construir Então uma nova execução deverá aparecer no histórico de builds com a data e hora corrente
* Clique no ícone bolinha colorida da cor (azul ou vermelho) para ver o log da console de execução




## Referências ##

* https://hodgkins.io/automating-with-jenkins-and-powershell-on-windows-part-1
