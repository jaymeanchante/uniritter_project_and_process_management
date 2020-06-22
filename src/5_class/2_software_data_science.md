% Aula 5 - Software para gerenciamento de projetos de ciência de dados
% Jayme Anchante
% 22 de junho de 2020

# Software para gerenciamento de projetos de ciência de dados

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

## Fluxo usual: OSEMN

![Paradigma OSEMN](images/5_class/osemn.png){ width=350px }

[comment]: # (source: https://miro.medium.com/max/1400/1*eE8DP4biqtaIK3aIy1S2zA.png)

# Boas práticas

## Lista de boas práticas

* Git: utilize versionamento de código
* Cloud: utilize um provedor de nuvem para seu ambiente de produção (aquele em que as coisas vão rodar no dia a dia), e se possível, faça desenvolvimento na nuvem
* CI/CD: faça integrações contínuas (forma automatizada de construir, empacotar e testar código) e implantação contínua (coloca seu programa numa infraestrutura de produção)
* Testes: faça testes de seu código para sua melhor manutenção, o seu "eu do futuro" irá agradecer
* **[Cookiecutter para ciência de dados](https://drivendata.github.io/cookiecutter-data-science/)**
* **[Docker](https://www.docker.com/)**

## **[Cookiecutter para ciência de dados](https://drivendata.github.io/cookiecutter-data-science/)**

"Cookie cutter" é uma expressão em inglês que significa "mesmice" ou "falta de originalidade"

Cookiecutter para ciência de dados é uma estrutura de projeto lógica, razoavelmente padronizada, e flexível para fazer e compartilhar projetos de ciência de dados

**Ciência** de dados, ciência é reproduzível por definição. Reproducibilidade é muito importante em projetos de programação e ciência de dados. Muitas vezes encontramos repositórios com um ou vários arquivos tipo **[jupyter](https://jupyter.org/)** sem nenhuma menção a linguagem utilizada (projeto jupyter suporta mais de 50 linguagens), como fazer a instalação do ambiente para rodar o *notebook*/caderno e outras instruções

Qualidade de organização e de código também é importante, ninguém quer se deparar com arquivos confusos e conflitantes como "make_figures.py.old", "make_figures_working.py" ou "new_make_figures01.py"

## Cookiecutter para ciência de dados - estrutura início

![Estrutura](images/5_class/cookie_1.png){ width=350px }

[comment]: # (source: https://drivendata.github.io/cookiecutter-data-science/)

## Cookiecutter para ciência de dados - estrutura fim

![Estrutura](images/5_class/cookie_2.png){ width=350px }

[comment]: # (source: https://drivendata.github.io/cookiecutter-data-science/)

## Docker

Ferramenta de virtualização a nível do sistema operacional para construção, empacotamento e compartilhamento de software como aplicações e microsserviços.

Problemas que resolve:

* Fazer implantações automatizadas contínuas (CD)
* Compartilhar código com pessoas que utilizam outros sistemas operacionais
* Utilizar software sem modificar a versão original que veio no seu sistema operacional

Casos de uso:

* Todos na equipe de ciência de dados utilizadas a mesma versão da linguagem de programação (Python 3.7.2, R 4.0.2) com a mesma versão das bibliotecas (pandas 0.23.4, tidyverse 1.3.0)

# Dados

## Softwares

* Git Large File Storage (LFS)
* **[DoltHub](https://www.dolthub.com/)**
* **[Great expectations](https://greatexpectations.io/)**

## Git LFS

Substitui grandes arquivos de áudio, vídeo, bases de dados por apontadores para estes arquivos em servidores dedicados a seu armazenamento

## Git LFS - Provedores

A maioria dos provedores de *Git as a Service* oferecem uma implementação de Git LFS, tais como **[GitHub](https://git-lfs.github.com/)**, **[Azure Repos da Microsoft](https://docs.microsoft.com/en-us/azure/devops/repos/git/manage-large-files)**, **[BitBucket da Atlassian](https://www.atlassian.com/git/tutorials/git-lfs)**, **[GitLab](https://docs.gitlab.com/ee/topics/git/lfs/)**

## Git LFS - uso

Baseado na **[documentação do GitHub](https://git-lfs.github.com/)**. Após a **[instalação](https://packagecloud.io/github/git-lfs/install)**, rode os seguintes comandos no terminal:

```git
git lfs install         # instala o LFS para seu usuário
git lfs track "*.png"   # selecione os tipos de arquivo
git add .gitattributes  # registre o .gitattributes
# comece o fluxo usual de git
git add images/*.png
git commit -m "Add image files"
git push origin master
```

## **[DoltHub](https://www.dolthub.com/)**

Dolt é a experiência Git para bancos de dados SQL (relacionais), provendo versionamento para *schema*/esquema e para cada linha de dados, otimizando para colaboração

Além disso, o DoltHub é um local de hospedagem de bancos de dados públicos e privados, provendo ferramentas de hospedagem, interface para consultas.

![Bancos de dados públicos](images/5_class/dolthub.png){ width=350px }

[comment]: # (source: https://www.dolthub.com/)

## Dolt - uso

Clonando (baixando) os dados:

```sh
$ dolt clone Liquidata/ip-to-country
cloning Liquidata/ip-to-country
23,716 of 23,716 chunks complete.
0 chunks being downloaded currently.
```

Mudanças na pasta:

```sh
$ ls -ltra
total 0
drwxr-xr-x   192B May  3 17:20 ../
drwxr-xr-x    96B May  3 17:20 ./
drwxr-xr-x   192B May  3 17:21 .dolt/
```

## Dolt - inspecionando os dados

```sh
$ dolt sql
# Welcome to the DoltSQL shell.
# Statements must be terminated with ';'.
# "exit" or "quit" (or Ctrl-D) to exit.
ip_to_country> show tables;
+---------------+
| Table         |
+---------------+
| IPv4ToCountry |
| IPv6ToCountry |
+---------------+
```

## Dolt - salvando resultados

```
$ dolt sql -q '\
  select Country,count(*)
  from IPv4ToCountry
  group by Country
  order by count(*) desc' -r csv > results.csv
$ head results.csv
Country,COUNT(*)
United States,56561
Brazil,10977
Russian Federation,10871
```

## **[Great expectations](https://greatexpectations.io/)**

Saiba o que esperar dos seus dados - "Grandes Expectativas" ajudam times de dados a eliminar débitos de pipeline, por meio de testes para dados, documentação e perfilamento

## Great expectations - configuração

![Configuração](images/5_class/greatexpectations_config.png){ width=350px }

[comment]: # (source: https://docs.greatexpectations.io/en/latest/tutorials/getting_started/connect_to_data.html)

## Great expectations - após adicionar um arquivo

![Grandes expectativas foram geradas](images/5_class/greatexpectations_add.png){ width=350px }

[comment]: # (source: https://docs.greatexpectations.io/en/latest/tutorials/getting_started/connect_to_data.html)

# Execução de pipelines

## Pipeline - conceito

Pipeline é tubulação.

Em vez de um único script (arquivo texto contendo instruções) ser executado manualmente, é necessário um tratamento mais elegante para soluções complexas do mundo real

Um pipeline de dados automatiza da tarefa de extração, transformação e carregamento ("exportação") de dados de um ou vários locais para um ou vários locais

Exemplos:

* Buscar dados do Google Analytics, realizar cálculos de agregação e colocar em um banco de dados da empresa
* Treinamento de um modelo de aprendizado de máquina que utiliza dados de transações financeiras
* Consolidação das informações contábeis do dia anterior

## Software

* **[Airflow](https://airflow.apache.org/)**
* **[dbt](https://www.getdbt.com/)**
* **[prefect](https://www.prefect.io/)**
* **[Dagster](https://github.com/dagster-io/dagster)**
* **[Kedro](https://github.com/quantumblacklabs/kedro)**
* **[Luigi](https://github.com/spotify/luigi)**
* **[pipecutter](https://pypi.org/project/pipecutter/)**
* **[GNU Make](https://www.gnu.org/software/make/)**

## pipecutter

```python
import luigi
import pipecutter
from pipecutter.targets import JoblibTarget
from sklearn.ensemble import RandomForestClassifier

class TrainModel(luigi.Task):
    n_estimators = luigi.IntParameter()
    def output(self):
        return JoblibTarget(self.task_id + ".joblib")
    def run(self):
        model = RandomForestClassifier(
            n_estimators=self.n_estimators
            )
        self.output().dump(model)

pipecutter.run(TrainModel(n_estimators=100))
# -> Cria arquivo TrainModel_100_0b0ec0cdea.joblib
```

## pipecutter - DAG

Direct acyclic graph (DAG, Grafo acíclico direto) é uma estrutura de dados em forma de grafo não linear com nós e arestas. No DAG, as arestas fluem em apenas uma direção.

![DAG simples gerado pelo pipecutter](images/5_class/pipecutter.png){ width=200px }

[comment]: # (source: https://pypi.org/project/pipecutter/)

![DAG mais complexo](images/5_class/complex_dag.png){ width=150px }

[comment]: # (source: https://medium.com/@dkylemiller/hello-world-data-pipeline-directed-acyclic-graph-using-apache-airflow-17bca0ffd7e5)

## GNU Make

Ferramenta de construção automatizada que cria programas executáveis e bibliotecas a partir de código fonte a partir da leitura de arquivos chamados *Makefiles*. Existem ferramentas específicas para certas linguagens e ambientes, mas Make ainda é muito utilizado em ambientes Unix-like.

Foir criado em 1976 por Stuart Feldman nos Laboratórios Bell. Hoje faz parte do ecossistema GNU mantido pela [Fundação do Software Livre](https://www.gnu.org/software/make/)

## GNU Make - estrutura

*Target*/alvo é o arquivo que vai ser (re)construído, *dependencies*/dependências são um ou mais arquivos são utilizados para construir o alvo, e *commands*/comandos são as instruções que devem ser executadas para (re)construir o alvo.

```Makefile
target:   dependencies ...
          commands
          ...
```

Supondo que uma dependência tenha uma data de modificação mais recente que o alvo (ou seja, sofreu uma alteração que ainda não refletiu no alvo), Make oferece uma interface rápida para atualizar o alvo (sem atualizar alvos que não precisem ser atualizados)

## GNU Make - ciência de dados

Zachary Jones escreveu um **[post](http://zmjones.com/make/)** mostrando a utilização de Make para criar um pipeline de ciência de dados poliglota

Rodando apenas o comando `make` todas as etapas serão executadas, mas também é possível executar apenas a extração de dados com `make data`

```Makefile
all: data model
data: raw.csv
model: model.Rout
raw.csv: get_data.py
    python get_data.py
clean.csv: clean.sh raw.csv
    source clean.sh
model.Rout: model.R clean.csv
    R CMD BATCH model.R
```

# Aprendizado de máquina

## Software

* Usar as abstrações de pipelines (scikit-learn, spark)
* TensorFlow Hub, PyTorch Hub
* **[MLflow](https://mlflow.org)**
* scikit-learn - **[choosing the right estimator](https://scikit-learn.org/stable/tutorial/machine_learning_map/index.html)**

## Pipeline em scikit-learn

```python
  from sklearn.preprocessing import StandardScaler
  from sklearn.svm import SVC
  from sklearn.pipeline import Pipeline

  pipeline = Pipeline([
      ("scaler", StandardScaler()),
      ("svc", SVC())])
  # The pipeline can be used as any other estimator
  # and avoids leaking the test set into the train set
  pipeline.fit(X_train, y_train)
Pipeline(steps=[("scaler", ..), ("svc", ..)])
  pipeline.score(X_test, y_test)
0.88
```

## Pipeline em spark

```python
from pyspark.ml import Pipeline
from pyspark.ml.classification import LogisticRegression
from pyspark.ml.feature import HashingTF, Tokenizer

tokenizer = Tokenizer(inputCol="text", outputCol="words")
hashingTF = HashingTF(inputCol=tokenizer.getOutputCol(),
                      outputCol="features")
lr = LogisticRegression(maxIter=10, regParam=0.001)
pipeline = Pipeline(stages=[tokenizer, hashingTF, lr])

pipeline = pipeline.fit(training)

prediction = model.transform(test)
```

## TensorFlow Hub, PyTorch Hub

Tanto **[TensorFlow](https://www.tensorflow.org)** - plataforma de código aberto apoiada pela **[Google](https://www.google.com)** - quanto **[PyTorch](https://pytorch.org)** - biblioteca para aprendizado profundo apoiada pelo **[Facebook](https://www.facebook.com)** - possuem um local para descoberta e publicação de modelos pré treinados

O **[PyTorch Hub](https://pytorch.org/hub/)** e o **[TensorFlow](https://www.tensorflow.org/hub/)**

## **[MLflow](https://mlflow.org/)**

Uma plataforma de código aberto para o ciclo completo de aprendizado de máquina

* Funciona com qualquer biblioteca de aprendizado de máquina e linguagem de programação
* Roda do mesmo jeito na nuvem
* Escalabilidade de um para vários usuários
* Escala para *big data* com Spark

## MLflow - rastreamento

```python
import mlflow
import mlflow.spark

with mlflow.start_run():
    mlflow.log_tag("estimatorName", "RandomForest")
    mlflow.log_param("n_estimators", 100)
    mlflow.log_metric("rmse", 3.14)
    mlflow.log_metric("nrows", 10084)
    mlflow.log_artifact(["age", "itemsPurchased"])
    mlflow.spark.log_model(spark_model)
```

## MLflow - visualização

![Visualização de modelos](images/5_class/mlflow.png){ width=400px }

[comment]: # (source: https://mlflow.org/docs/latest/tutorials-and-examples/tutorial.html)

## MLflow - reproducibilidade

![Ambiente Anaconda reproduzível](images/5_class/mlflow_science.png){ width=400px }

[comment]: # (source: https://mlflow.org/docs/latest/tutorials-and-examples/tutorial.html)

## scikit-learn: escolhendo o estimator certo

A biblioteca scikit-learn oferece uma miríade de estimadores

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

![Pronto para o aprendizado de máquina](images/5_class/dl_meme.png){ width=350px }

[comment]: # (source: https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=2207475652598990)

[comment]: #

[comment]: # * [Automatizando o ciclo total de aplicações de aprendizado de máquina](https://martinfowler.com/articles/cd4ml.html)
[comment]: # * [Data science Project Management](http://www.datascience-pm.com/)

[comment]: # * [Pachyderm](https://www.pachyderm.com/)
[comment]: # * [DVC](https://dvc.org/)
[comment]: # * [Datmo](https://github.com/datmo/datmo)
[comment]: # * [KubeFlow](https://www.kubeflow.org/)
[comment]: # * [MLflow](https://mlflow.org/)