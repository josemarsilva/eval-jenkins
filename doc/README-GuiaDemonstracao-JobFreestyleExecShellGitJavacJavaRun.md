# README-GuiaDemonstracao-JobFreestyleExecShellGitJavacJavaRun.md


## 1. Introdução ##

O objetivo desta demonstração é ensinar:
* criar no Jenkins um novo _Job_ do tipo _Freestyle_ que execute um Shell que Compile e rode um programa Java

### 2. Premissas ###

* n/a

### 3. Passo-a-passo ###

### 3.2. Criar um Job para executar Shell ###

* Logado no Jenkins clique na opção de menu lateral "Jenkins >> Novo Job"
* Preencha o novo Job com as seguintes informações e conteúdo do script groovy abaixo:

```html
+--------------------------------------------------------------------------------+
| Jenkins                                                                        |
|   :                                                                            |
| Enter an item name: [ Freestyle-ExecShell-JavacJavaRun ]                       |
|   :                                                                            |
| Gerenciamento de Código Fonte                                                  |
|   {x] Git                                                                      |
|       Repository URL: [ https://github.com/josemarsilva/eval-jenkins.git     ] |
|         :                                                                      |
| Build                                                                          |
|   [Construir um projeto de software Freestyle] <- Escolha esta opção           |
|     :                                                                          |
| +----+                                                                         |
| | OK | <- Clique aqui                                                          |
| +----+                                                                         |
+--------------------------------------------------------------------------------+
```

* Complete a configuração do Job conforme abaixo:

```html
+--------------------------------------------------------------------------------+
| Build                                                                          |
|   [Add Build Step] <- clique no botão                                          |
|   [ Executar no comando do Windows ] <- escolha a opção                        |
|     Comando: [ cd "C:\MYGIT~1\workspace-github\eval-jenkins\src\java"      ]   |
|              [ javac Hello.java                                            ]   |
|              [ java -cp . Hello                                            ]   |
|         :                                                                      |
| +----+                                                                         |
| | OK | <- Clique aqui                                                          |
| +----+                                                                         |
+--------------------------------------------------------------------------------+
```


### 3.3. Executar o Script ###

* Logado no Jenkins clique na opção de menu lateral "_Jenkins >> Tudo_" Então uma lista com todos os "_Jobs_" será apresentada 
* Clique no link que navega para o _Job_ **Freestyle-ExecShell-JavacJavaRun** Então um formulário de detalhamento do "_Job_" será apresentado
* Clique no link do botão lateral esquerdo identificado por "_Construir agora_" Então uma nova execução deverá aparecer no histórico de builds com a data e hora corrente
* Clique no ícone bolinha colorida da cor (azul ou vermelho) para ver o log da console de execução




## Referências ##

* https://www.youtube.com/watch?v=bGqS0f4Utn4&t=330s&index=82&list=LL6itKYf90j2igCkIWsh8_jQ
* https://www.youtube.com/watch?v=-U-eUHI6euM