---
title: "Extraindo tabelas de documentos pdf em R com Tabulizer"
reporter: "Pedro Rocha"
date: 2020-07-20
resource: "Tabulizer"
original_url: "https://discuss.ropensci.org/t/extraindo-tabelas-de-documentos-pdf-em-r-com-tabulizer/2178"
language: [English]
---

#### rOpenSci package or resource used

[Tabulizer](https://docs.ropensci.org/tabulizer/)

#### What did you do? 

Estava procurando dados sobre operações de Garantia da Lei e da Ordem (GLOs) no Brasil para o artigo final de uma disciplina do doutorado. Infelizmente não há muita informação disponível em série histórica, apesar do Ministério da Defesa ter contabilizado alguns dados das operações realizadas desde 1992. Eles estão disponíveis [aqui](https://www.gov.br/defesa/pt-br/assuntos/exercicios-e-operacoes/garantia-da-lei-e-da-ordem), assim com a metodologia usada para coleta-los. Maravilha, mas temos um problema: os dados não estão em planilhas prontas para gente usar, mas em pdf. Em dois pdfs, no caso. Um primeiro contendo variáveis como  *data* ,  *nome* ,  *local* ,  *missão*  e  *tipo*  da operação, e um segundo contendo o seu  *custo*  e o  *efetivo*  empregado. Resolvi então escrever um post mostrando um pouco o processo de extração e transformação inicial dos dados. 

#### URL or code snippet for your use case*
O código e o tutorial podem ser acessados [aqui](http://pedrodrocha.com/2020-07-12-tabulizer/)


#### Sector
Acadêmico, privado, terceiro setor, etc.



