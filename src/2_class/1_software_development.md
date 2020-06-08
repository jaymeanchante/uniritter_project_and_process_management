% Aula 2 - Desenvolvimento de software
% Jayme Anchante
% 10 de junho de 2020

# Desenvolvimento de software

## Conceito

Desenvolvimento de software é o processo de conceber, especificar, desenhar, programar, documentar, testar e consertar bugs envolvendo a criação e manutenção de aplicações, paradigmas ou outros componentes de software

## Objetivos

Atender a necessidade de cliente/negócio, atender uma necessidade futura tanto comercialmente como de forma *open source*, e para uso pessoal

## Engenharia de software

A necessidade de melhor controle de qualidade no desenvolvimento de software fez surgir a engenharia de software, ou seja, aplicar o paradigma da engenharia para o desenvolvimento de software

## Coders, programmer, software developer, software engineer

* Coder: escrever código (que pode não ser parte/um programa ou sistema de software), código pode ser marcação/markup (HTML, CSS, XML) ou funções em uma planilha
* Programmer: pessoa que programa, para desenvolver software muitas vezes não é necessário programar
* Desenvolvedor de software: precisa entender de todas as fases do desenvolvimento de software, não apenas a implementação
* Engenheiro de software: um desenvolvedor de software com um grau de educação formal e/ou muita experiência, escrita em muitas linguagens, habilidades em arquitetura, modularização, scaling, 

Mais destas definições nessa [thread no Reddit](https://www.reddit.com/r/startups/comments/2qidxf/coder_vs_developer_vs_programmer_vs_software/)

## Atividades principais

* Processos/procedimentos
* Requisitos
* Design
* Engenharia
* Construção
* Testes
* Debugging
* Implantação/deployment
* Manutenção

# Processos

## Conceito

Processo de desenvolvimento de software (também conhecido como metodologia, modelo ou ciclo de vida) é o paradigma usado para estruturar, planejar e controlar o processo.

Existem diversos paradigmas com diferentes características, forças e fraquezas, e nenhuma é a melhor em todos os casos

## Etapas gerais

Também conhecido como software development life cycle (SDLC)

* Análise o problema
* Pesquisa de mercado
* Requisitos para solução de negócio
* Criação de um plano ou design para uma solução baseada em software
* Implementação/codar o software
* Testes
* Implantação
* Manutenção e correção de bugs

## Identificação da necessidade

Ideias para novos softwares podem vir de pesquisas de mercado, clientes atuais, prospects de venda.

Ideias devem ser avaliadas pela equipe de marketing para viabilidade econômica, adaptação/fit com os atuais canais de distribuição e produtos, características requeridas, após essa primeira triagem o projeto pode ir adiante

Poucas pessoas conhecem engenharia, marketing e finanças necessárias e suficientes para lançar um produto de software

Projeto de desenvolvimento de software pode acabar indo para outras direções menos técnicas como recursos humanos, gerenciamento de riscos, orçamentos e outros, fazendo com que o desenvolvimento de negócios tome conta

## Planejamento

Levantamento de requisitos: stakeholders têm uma ideia abstrata do que gostariam, mas não o que ou como o software deveria fazer

Engenheiros experientes reconhecem requisitos ambíguos, incompletos ou contraditórios

Um documento com análise de escopo deve ser redigido de forma clara

## Design

Design preliminar e alto nível dos principais módulos com o quadro geral de como cada parte se relaciona

Linguagem, sistema operacional, softwares auxiliares, hardware devem ser conhecidos

Um design mais detalhado deve ser criado, talvez com um protótipo ou com uma POC (*proof of concept*) para reafirmar os requisitos

## Implementação, documentação e testes

Implementação é quando ocorre a parte da escrita do programa

Testes garantem que os defeitos são reconhecidos rapidamente, em algumas práticas (test-driven development) os testes são desenvolvidos antes da implementação servindo como guia de boas práticas

Documentação tem a função de ajudar a futura manutenção e melhora do software e é feita ao longo do desenvolvimento.

## Implantação e manutenção

A implantação inicia assim que o código passa pelos testes e é aprovado para lançamento e vendido ou colocado em um ambiente de produção

Treinamento e suporte são muito importantes para seu uso correto

Manutenção e melhora para corrigir falhas ou novos requisitos, grande parte dos casos manutenção regular é necessária para garantir o funcionamento contínuo

# Requisitos

## Conceito

Análise dos requisitos é a tarefa que determina as necessidades ou condições de novos projetos ou alterações destes, levando em consideração os diversos stakeholders, outros softwares e sistemas

É um aspecto chave para o sucesso de um projeto. É um documento que deve mensurável, testável e bem explicado

## Etapas

1. Extração dos requisitos: documentação de processos de negócios, entrevistas com stakeholders
2. Documentação de requisitos: formato de lista, documentos por extenso, casos de uso, histórias do usuário, especificação de processos e outros modelos
3. Análise dos requisitos: determinar se os requisitos estão claros, completos, concisos, válidos, e resolvidos outros conflitos

##  Algumas práticas

Desenvolvimento de cenários ou histórias de usuários em ágil

Etnografia (observação de participantes), entrevistas, grupos focais

Protótipo pode ilustrar melhor a definição para stakeholders (parte visual/telas feita pelo deisgner/UX)

## Sessões de Desenvolvimento Conjunto de Requisitos

Requisitos tem implicações que às vezes são desconhecidas para stakeholers individuais

Essas implicações podem ser descobertas por meio de sessões reunindo diferentes stakeholders em que um facilitador treinado pode provocar para que surjam

## Lista de requisitos

A maneira tradicional de documentar requisitos é por meio de listas, ela oferece uma maneira simples de *checks*, um contrato sponsor e os desenvolvedores; entretanto ela pode ser muito longa se forem muitos requisitos, podem ser abstratas, difícil 

Em ágil, recomenda-se o uso de histórias do usuário

## Objetivos mensuráveis

Após ter a lista de requisitos, é interessante pergunta "por que?" para todos os itens até que o verdadeiro propósito seja descoberto

Ideação de maneiras de testar quando cada requisito for alcançado

## Protótipos

É um programa que exibe parte das propriedades de um outro programa de computador.

Uma forma popular é o *mockup* (maquete, modelo) para ajudar usuários a terem uma ideia de como o sistema será

Ainda podem ser *wireframes* ou aplicações funcionais com menos funções, em escala de cinza para prevenir confusão (protótipo vs produto final)

## Casos de uso

Cada uso de caso provê uma série de cenários de como o sistema irá interagir com humanos ou outros sistemas para atingir um certo objetivo de negócios, evitando jargão, e sendo na linguagem do usuário final ou especialista do domínio

## Tipos de requisitos

* Cliente
* Arquitetural
* Estrutural
* Funcional
* Performance
* Design

## Problemas

* Stakeholders: não entendem o que querem, não se comprometem com requisitos por escrito, insistem em novos requisitos após orçamento e cronograma estarem fixados, não participam de reviews, não conhecem o processo de desenvolvimento e as tecnologia

* Engenheiros/desenvolvedores: escrever código antes dos requisitos estarem claros, uso de diferentes vocabulários levando a erroneamente achar que todos estão concordando

# Design

## Conceito

Processo de criar uma especificação de um artefato de software para alcançar objetivos usando componentes primitivos e certas restrições

Etapa após os requisitos e antes da programação em si

Envolve tanto parte de baixo nível de componentes e algoritmos como alto nível de arquitetura