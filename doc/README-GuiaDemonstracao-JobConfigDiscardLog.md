# README-GuiaDemonstracao-JobConfigDiscardLog.md


## 1. Introdução ##

O objetivo desta demonstração é ensinar:
* Configurar um _Job_ do Jenkins para descartar os log's de execuções antigas

### 2. Premissas ###

* Existir um _Job_ para ser configurado

### 3. Passo-a-passo ###

### 3.2. Configurar o Job para descartar os log's de execuções antigas ###

* Logado no Jenkins clique na opção de menu lateral "Jenkins"
* Clique no link do _Job_ que será configurado (neste caso "Pipeline-Periodico-(15-em-15)-Bat-Script/" ) 
* Em seguida clique no botão lateral esquerdo "_Configurar_" e observe o formulário de configuração do _Job_

```html
+--------------------------------------------------------------------------------+
| General                                                                        |
| [X] Descartar builds antigos                                                   |
| [Pipeline] <- Escolha esta opção                                               |
|            Strategy   : [Log Rotation]                                         |
|            Dias manter: [ 10 ]                                                 |
|            Máx. Builds: [ 5  ]                                                 |
|  :                                                                             |
| +----+                                                                         |
| | OK | <- Clique aqui                                                          |
| +----+                                                                         |
+--------------------------------------------------------------------------------+
```


### 3.3. Executar o Script ###

* Logado no Jenkins clique na opção de menu lateral "_Jenkins >> Tudo_" Então uma lista com todos os "_Jobs_" será apresentada 
* Clique no link que navega para o _Job_ **Pipeline-Periodico-(15-em-15)-Bat-Script** Então um formulário de detalhamento do "_Job_" será apresentado
* Observe na lateral esquerdo identificado os históricos de builds e aguarde o tempo necessário para testar sua política de descarte de log's




## Referências ##

* https://hodgkins.io/automating-with-jenkins-and-powershell-on-windows-part-1
