% Aula 5 - Software para gerenciamento de projeto de ciência de dados
% Jayme Anchante
% 22 de junho de 2020

# Software para gerenciamento de projeto de ciência de dados

# Stack inicial para ciência de dados

## Python

* pandas: processamento de dados
* scikit-learn: aprendizado de máquina
* matplotlib: visualização
* jupyter: interface gráfica para programação

## R

* dplyr: processamento de dados
* caret: aprendizado de máquina
* ggplot2: visualização
* jupyter/RStudio: interface gráfica para programação

## Boas práticas

* Cookiecutter
* git
* cloud
* CI/CD
* testes

## Processamento de dados

* GNU Make
* Luigi
* Luigi para data science?pesquisar
* Logging, APM

## Versionamento de dados

## Aprendizado de máquina

* mlflow
* tensorflowhub, pytorchhub
* sklearn - choosing the right estimator

## scikit-learn: escolhendo o estimator certo

A biblioteca scikit-learn oferece uma miríade de estimador

É importante conhecer as bases teóricas de cada um (ou cada classe de estimadores, pelo menos) para saber qual utilizar em certa situação

Caso você não tenha ciência de todos ou do funcionamento geral, a biblioteca oferece um gráfico de fluxo conhecido como **[escolhendo o estimador certo](https://scikit-learn.org/stable/tutorial/machine_learning_map/index.html)**

## Escolhendo o estimador certo: fluxo

![Escolhendo o estimador certo](images/5_class/sklearn_estimator.png){ width=400px }

[comment]: # (source: https://scikit-learn.org/stable/_static/ml_map.png)

## Uma versão extendida do gráfico de fluxo do scikit-learn

Christophe Bourguignat escreveu o artigo "**[An extended version of the scikit-learn cheat sheet](https://medium.com/@chris_bour/an-extended-version-of-the-scikit-learn-cheat-sheet-5f46efc6cbb)**"

![Versão extendida do scikit-learn](images/5_class/extended_sklearn.jpeg){ width=350px }

[comment]: # (source: https://miro.medium.com/max/1400/1*LixatBxkewppAhv1Mm5H2w.jpeg)

## Permissão legal

Mesmo que os dados já estejam "dentro de casa", grandes organizações ou empresas regulamentadas (*fintechs*) possuem regras "rígidas" para acesso de dados

Se o projeto for feito para uma empresa externa, devem ser estabelecidas regras claras sobre armazenamento, acesso, governança, disponibilidade. É praxe as partes (empresas) e até mesmo colaboradores assinarem NDAs (*non disclosure agreements* ou acordos de não abertura)

Às vezes os dados já estão coletados, mas não há permissão dos usuários para certos novos usos. E.g. as transações dos usuários são armazenadas, mas pode recomendar produtos para os usuários (envio de email, push, sms)

## Acesso aos dados

* Regras de acesso complexas
* Dados não centralizados, uso de vários sistemas
* Uso de VPN, autenticação, firewalls

## Entendimento dos dados - competição

Em competições de aprendizado de máquina, as variáveis estão claramente diferenciadas entre dependente e independentes, não é necessário saber o que cada uma significa, às vezes isso é um requisito para garantir a confidencialidade e anonimização dos dados

Exemplo:

* rótulo: variável dependente que é 1 se o banner foi clicado e 0 caso contrário
* I1-I13: são as colunas cujo tipo é inteiro
* C1-C26: são as colunas cujo tipo é texto ou categóricas

## Entendimento dos dados - "mundo real"

O entendimento dos dados pode ajudar em:

1. Criar modelos interpretáveis: a cada 1min a mais que o visitante passa o site, a chance de gerar uma compra aumenta em 5%
2. Ajudar na criação de características: colunas são informações extraídas em bancos de dados, arquivos e outros formatos, características são as informações que serão colocados para que os estimadores interpretem e vejam os padrões

Supondo que você precise criar um sistema de recomendação de produto, você pode usar:

* cod_item, cod_sku, cod_cat_item da tabela items
* cod_produto, cod_subproduto, cod_cat_subproduto da tabela produtos
* produto_nome, item_nome, id_produto, sku_produto da tabela transactions
* cod_sku, cod_inventario da tabela inventory

## Limpeza dos dados

É reconhecida como uma das fases mais dispendiosas de tempo e esforço num projeto de ciência de dados

Alguns casos comuns são: dados de teste no início ou ao longo do período histórico (testes automatizados ou manuais que percorrem um site em produção), erros de digitação de dados manuais, dados não preenchidos (cadastro feito por pessoas no mundo físico), fraudes, outliers (pontos fora da curva), amostras que não são do interesse do projeto (pessoas com certas características ou certas transações)

## Pergunta de negócio

Cientistas de dados amam resolver problemas complexos, alguns úteis, outros nem tanto

Antes de começar o projeto é importante todos os stakeholders estarem alinhados quanto aos objetivos a serem alcançados, o que será predito, qual a performance mínima exigida, qual o retorno sobre o investimento mínimo atrativo, como integrar a saída do modelo com os demais sistemas da organização e processos que as pessoas realizam

## Chegou até aqui?

Então agora pode entrar no fluxo original do scikit-learn!

![Pronto para o aprendizado de máquina](images/5_class/dl_meme.png){ width=400px }

[comment]: # (source: https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=2207475652598990)