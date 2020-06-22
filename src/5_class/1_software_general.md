% Aula 5 - Software para gerenciamento de projetos de tecnologia
% Jayme Anchante
% 22 de junho de 2020

# Software para gerenciamento de projetos de tecnologia

## Tipos

* SaaS - Software as a Service
* Código aberto
* Bibliotecas e outros materiais

# SaaS - Software as a Service

## Softwares

* Atlassian (Jira, Trello)
* Monday
* Asana
* Pivotaltracker
* **[E uma série de outros...](https://www.softwaretestinghelp.com/jira-alternatives/)**

## Atlassian

É uma empresa australiana que desenvolve produtos para desenvolvimento de software, gerenciamento de projetos e gerenciamento de conteúdo

Ecossistema de produtos proprietários para todas as fases do ciclo do desenvolvimento de software: versionamento de código, documentação, projeto, help desk etc

## Atlassian - Jira

Ferramenta de gerenciamento de desenvolvimento de software para times ágeis

Possui características na parte de planejamento, controle, rastreamento, lançamento

## Atlassian - Jira - kanban

![Quadro Kanban](images/5_class/jira_board.png){ width=400px }

[comment]: # (source: https://wac-cdn.atlassian.com/dam/jcr:8e2b794f-0d62-4b16-ab23-7810bfd4ce66/Group%205.png?cdnVersion=1084)

## Atlassian - Jira - lançamentos

![Lançamentos](images/5_class/jira_release.png){ width=400px }

[comment]: # (source: https://wac-cdn.atlassian.com/dam/jcr:ed5a5006-c1e0-4c56-b22c-4ab8533fd29d/plan-track.png?cdnVersion=1084)

## Atlassian - Jira - tags e fluxos

![Tags, fluxos e processos](images/5_class/jira_tags.png){ width=400px }

[comment]: # (source: https://www.atlassian.com/software/jira)

## Atlassian - Jira - ecossistema

![Ecossistema Atlassian](images/5_class/jira_ecosystem.png){ width=400px }

[comment]: # (source: https://www.atlassian.com/software/jira)

## Atlassian - BitBucket

Versionamento de código via git, colaboração em código, testes e implantação

![Versionamento, pipeline CI/CD](images/5_class/bitbucket.png){ width=350px }

[comment]: # (source: https://bitbucket.org/product/features/pipelines)

## Atlassian - Confluence

Ferramenta para conhecimento, documentação, colaboração, organização

![Documentação](images/5_class/confluence.png){ width=300px }

[comment]: # (source: https://bitbucket.org/product/features/pipelines)

## Atlassian - Trello

Ferramenta web que cria listas em estilo Kanban, foi adquirida pela Atlassian em 2017 por US$ 425 milhões

Possui aplicativos móveis, automações (gatilhos customizáveis, calendário, data de entrega), integrações (com mensagerias, aplicativos de notas, arquivos em nuvem)

![Quadro de Kanban](images/5_class/trello.png){ width=250px }

[comment]: # (source: https://trello.com/)

## Monday

Software para equipes rodarem processos, projetos e trabalhos cotidianos

Possui casos de uso para trabalho remoto, gestão de projetos, marketing, rh, vendas, desenvolvimento de software e outros

![Monday](images/5_class/monday.png){ width=350px }

[comment]: # (source: https://dapulse-res.cloudinary.com/image/upload/f_auto,q_auto/Generator_featured%20images/Not%20for%20use/software%20dev/sprintplanning.png)

## Asana

![Asana](images/5_class/asana.png){ width=400px }

[comment]: # (source: https://asana.com/)

## Pivotaltracker

![Pivotaltracker](images/5_class/pivotaltracker.png){ width=400px }

[comment]: # (source: https://www.pivotaltracker.com/features)

# Código aberto

## Git

Sistema de versionamento de código distribuído para rastrear mudanças no código fonte durante o desenvolvimento de software

Muito utilizado para coordenar o trabalho de programadores, mas pode ser utilizado para qualquer propósito desde que sejam rastreadas mudanças em arquivos: hoje existem programas para designers (como o programa [Abstract](https://www.abstract.com), o plugin [Plant](https://plantapp.io) para Sketch), para arquitetos (para versionar arquivos CAD) e outros

## Git - história

Linus Torvalds havia criado o kernel do Linux nos anos 1990

Todas as discussões, lançamentos, melhorias de código, revisão de código, dúvidas eram feitas atráves de listas de emails

Em 2002, o código foi colocado em um sistema proprietário de versionamento de código chamado BitKeeper. Ao longo do tempo, a empresa começou a cobrar pelo uso do sistema, e também foi aumentando o tempo de processamento das mudanças do versionamento

## Git - características

* Suporte ao desenvolvimento não linear
* Sistema distribuído: cada cópia local do código contém todo histórico de desenvolvimento
* Compatibilidade com outros sistemas: interações podem ser feitas via HTTP ("hypertext transfer protocol"), FTP ("file transfer protocol") ou SSH ("secure shell")
* Eficiência: rápido e escalável (funciona tão bem em pequenos quanto em grandes projetos)

## Git - estruturas e nomenclaturas

* Árvore: equivalente a um diretório, é uma lista de arquivos com uma referência a um objeto
* Commit: objeto que une objetos da árvore em um histórico de mudanças
* Heads: refere-se a objetos locais (na máquina do desenvolvedor)
* Remotes: refere-se a objetos remotos (em uma máquina externa, um servidor)
* Stash: objetos que ainda não foram "commitados"

## Git - imagem

![Git flow](images/5_class/git.png){ width=400px }

[comment]: # (source: https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Git_session.svg/1280px-Git_session.svg.png)

## GitLab

![Posicionamento do GitLab](images/5_class/gitlab_positioning.png){ width=400px }

[comment]: # (source: https://about.gitlab.com/)

## GitLab - casos de uso

![Casos de uso](images/5_class/gitlab_usecases.png){ width=400px }

[comment]: # (source: https://about.gitlab.com/)

## GitLab - características

![Planos](images/5_class/gitlab_plans.png){ width=400px }

[comment]: # (source: https://about.gitlab.com/pricing/)

## GitLab - hospedagem

![Opções de hospedagem](images/5_class/gitlab_hosting.png){ width=400px }

[comment]: # (source: https://about.gitlab.com/pricing/)

## Alternativas ao Jira - "Jira Clone"

[Jira Clone](https://github.com/oldboyxx/jira_clone/) é uma versão simplificada do Jira escrita em JavaScript (Node, React, TypeScript etc.) escrita por uma única pessoa no seu tempo livre para ter um produto para seu portfólio

![Jira clone](images/5_class/jira_clone.jpeg){ width=400px }

[comment]: # (source: https://camo.githubusercontent.com/42f44a63ebf4f4fefd538d3c6d4b4a3084065d33/68747470733a2f2f692e6962622e636f2f5733715676436e2f6a6972612d6f7074696d697a65642e6a7067)

## Nextcloud

Plataforma de produtividade para hospedagem própria

Possui serviços email, calendário, contatos, hospedagem de arquivos, ferramenta de busca na web, chat com áudio/vídeo

O aplicativo [Deck](https://apps.nextcloud.com/apps/deck) é uma ferramenta estilo Kanban para organização de projetos com integração com as outras ferramentas da nuvem do Nextcloud

![Jira clone](images/5_class/nextcloud_deck.png){ width=300px }

[comment]: # (source: https://cloud.disroot.org/apps/deck/#/)

# Bibliotecas e outros materiais

## Pacote R para Six Sigma

[SixSigma](https://cran.r-project.org/web/packages/SixSigma/index.html): é um pacote para ferramentas de controle de qualidade e melhorias Six Sigma

Demonstrações retiradas do tutorial **[Six Sigma DMAIC Series in R](https://datascienceplus.com/six-sigma-dmaic-series-in-r-part-1/)**

## SigSigma - mapa do processo

```R
library("SixSigma")
inputs <-c ("Ingredients", "Cook", "Oven")
outputs <- c("temperature", "taste", "tenderness"))
steps <- c("DOUGH", "TOPPINGS", "BAKE", "DELIVER")

io <- list()
io[[1]] <- list("X's")
io[[2]] <- list("Dough", "ingredients", "Cooker")
io[[3]] <- list("Raw Pizza", "Cooker", "Oven Plate")
io[[4]] <- list("Baked Pizza", "Plate")
# ...
ss.pMap(steps, inputs, outputs,
        io, param, feat,sub = "Pizza Process")
```

## SigSigma - mapa do processo

![Mapa do processo](images/5_class/r_map.png){ width=250px }

[comment]: # (source: https://datascienceplus.com/wp-content/uploads/2018/05/pm-490x432.png)

## SigSigma - gráfico Ishikawa

```R
library("SixSigma")
effect <- "Low Quality product"
causes.gr <- c("Measurement", "Material", "Methods")
causes <- vector(mode="list", length=length(causes.gr))
causes[1] <- list(c("Lab error", "Contamination"))
causes[2] <- list(c("Raw Material", "Additive"))
causes[3] <- list(c("Sampling", "Analytical Procedure"))
ss.ceDiag(effect, causes.gr, causes,
          sub = "Fish Bone Diagram Example")
```

![Gráfico Ishikawa](images/5_class/r_ishikawa.png){ width=175px }

[comment]: # (source: https://datascienceplus.com/wp-content/uploads/2018/05/ce-490x394.png)

## SixSigma - gráfico de Pareto

```R
library(qcc)
defect <- c(60,20,16,14,8,9)
names(defect) <- c("A", "B", "C", "D","E","F")
pareto.chart(
    defect,
    ylab = "Defect frequency",
    col=heat.colors(length(defect)))
```

![Gráfico de Pareto](images/5_class/r_pareto.png){ width=220px }

[comment]: # (source: https://datascienceplus.com/wp-content/uploads/2018/05/pppp-490x394.png)

## SixSigma - controle de produção

```R
library(qcc)
library(SixSigma)
with(
    ss.data.pb3,
    plot(qcc(stockouts, orders, type ="p")))
```

![Controle de produção](images/5_class/r_control.jpg){ width=150px }

[comment]: # (source: https://datascienceplus.com/wp-content/uploads/2019/01/pchart.jpg)

## Controle Estatístico de Qualidade

**[Cadeira do Departamento de Estatística da UFPR](http://www.leg.ufpr.br/~walmes/ensino/CEQ/)** que mostra a abordagem estatística sobre controle de qualidade

![Ilustração de um gráfico de controle](images/5_class/ufpr_ceq.png){ width=300px }

[comment]: # (source: http://www.leg.ufpr.br/~walmes/ensino/CEQ/slides/01-introducao-ceq.pdf)