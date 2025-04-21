---
slug: thanking-reviewers-in-metadata
title: 'Agradecendo a seus revisores: Gratidão por meio de metadados semânticos'
date: '2018-03-16'
author:
- Noam Ross
- Maëlle Salmon
- Karthik Ram
- Scott Chamberlain
topicid: 1101
tags:
- community
- Software Peer Review
- metadata
params:
  doi: 
---

Na rOpenSci, nosso [processo de revisão por pares de pacotes R][R package peer review process] conta com o trabalho árduo de muitos revisores voluntários.  Esses membros da comunidade doam seus [tempo][time] e sua experiência para melhorar a qualidade dos pacotes rOpenSci e ajudar a introduzir práticas recomendadas em softwares científicos.

Nosso *aberto* Nosso processo de revisão aberto, em que as revisões e os revisores são públicos, significa que um benefício para os revisores é que eles podem receber crédito por suas revisões.  Queremos que os revisores tenham o máximo de benefícios possível e que suas contribuições sejam registradas como parte da trilha intelectual do trabalho acadêmico, portanto, estamos trabalhando para tornar as revisões visíveis e detectáveis.

É por isso que estamos muito animados com uma pequena alteração no lançamento de ontem do R 3.4.4.

Se você estiver executando o R 3.4.3 e digitar `utils:::MARC_relator_db_codes_used_with_R` no console, você verá o seguinte:

```r
> utils:::MARC_relator_db_codes_used_with_R
 [1] "aut" "com" "ctr" "ctb" "cph" "cre" "dtc" "fnd" "ths" "trl"
```

Na versão 3.4.4, você obtém o seguinte:

```r
> utils:::MARC_relator_db_codes_used_with_R
 [1] "aut" "com" "ctr" "ctb" "cph" "cre" "dtc" "fnd" "rev" "ths" "trl"
```

O que é esse pequeno `"rev"` que aparece, o terceiro a partir da direita? É a inclusão oficial de "Revisor" como uma função de autor do pacote R!

Esses códigos de três letras vêm do [termos MARC (Catalogação legível por máquina)][marc] um conjunto padrão de tipos de autoria originalmente criado para alguns dos primeiros sistemas informatizados de bibliotecas. O R usa esses códigos para distinguir entre diferentes tipos de autores de pacotes. Você pode estar familiarizado com alguns desses termos que aparecem em `DESCRIPTION` como, por exemplo:

```
Authors@R: person("Scott", "Chamberlain", role = c("aut", "cre"), 
       comment = c(ORCID = "0000-0003-1444-9135"))
```

Aqui `aut` e `cre` significam "Author" (autor) e "Creator" (criador), indicando que Scott é o criador original e principal de um pacote.  Você também pode ter visto `ctb` (Colaborador) ou `cph` (Detentor dos direitos autorais [^1] ).

[^1]: Não posso terminar esta postagem sem mencionar que*Sua Majestade a Rainha de Direito do Canadá, representada pelo Ministro de Recursos Naturais do Canadá* é `cph` em [oito pacotes CRAN](https://github.com/search?utf8=%E2%9C%93&q=org%3Acran+Her+Majesty+the+Queen+in+Right+of+Canada%2C+as+represented+by+the+Minister+of+Natural+Resources+Canada+filename%3ADESCRIPTION&type=Code).

Descritores padrão como esse são importantes porque permitem que as informações sobre autoria sejam legíveis por máquina e que o crédito pelo trabalho dos autores seja catalogado e transferido. Quando os metadados sobre os pacotes R são exibidos em arquivos de ajuda ou em sites, fica claro o papel que cada um desempenhou. Esses metadados também são essenciais para [crédito transitivo][transitive credit] a importante tarefa de rastrear as contribuições por meio de cadeias de dependências, de modo a reconhecer os desenvolvedores de software e os provedores de dados que o sistema de citação tradicional geralmente não reconhece.

Embora existam muito mais [^2] termos de relator MARC, o R permite apenas um pequeno conjunto que faz sentido no contexto de pacotes de software. Esses termos são encontrados em`utils:::MARC_relator_db_codes_used_with_R`. Os códigos fora desse conjunto não passarão na verificação CMD do R e não são permitidos no CRAN.

[^2]: Encontrado[aqui](https://www.loc.gov/marc/relators/relaterm.html) ou como um quadro de dados útil com descrições em `utils:::MARC_relator_db`

Acreditamos que os revisores de pares fazem uma contribuição importante para a qualidade do software publicado. Por isso, no ano passado, solicitamos que o R-Core adicionasse `"rev"` (Revisor) à lista de tipos de colaboradores permitidos. E eis que Kurt Hornik fez a solicitação [mudança][change] em nosso nome [^3] . Agora ele está na versão de lançamento do R.

[^3]: O R-core também foi adicionado`"fnd"` (Fundador) no R 3.4.3.

Como o CRAN usa a versão de desenvolvimento do R para verificar e criar pacotes, a opção já está disponível no CRAN há algum tempo. Alguns autores já estão informando os revisores dessa forma em seus [arquivos DESCRIPTION do pacote][package DESCRIPTION files].

Esperamos ver a adoção de agradecimentos de revisores em metadados de software além da rOpenSci. [JSS], [JOSS] ou qualquer periódico ou processo em que os revisores façam comentários significativos sobre o código ou a documentação do software.  Para software não-R, estamos [trabalhando em][working on] incluindo revisores em [codemeta] um padrão de metadados de software em várias linguagens.

Algumas observações sobre como esse desenvolvimento se relaciona especificamente com o processo de revisão por pares da rOpenSci:

- Em primeiro lugar, é 100% escolha dos autores do pacote decidir se os revisores fizeram uma contribuição suficiente para serem incluídos no `Authors` dessa forma.  Embora promovamos essa opção *em geral* nunca pediremos a um autor que inclua especificamente um revisor.  Assim como a seção de agradecimentos de um manuscrito, a seção `Author` está sob o controle do desenvolvedor. Também cabe aos revisores decidir se eles *querem* ser incluídos, portanto, os autores de pacotes devem perguntar aos revisores primeiro.

- Em segundo lugar, os editores do rOpenSci devem *não* ser listados em `Authors`. `"edt"` (Editor) não é uma função de autoria R válida, e estamos muito distantes para sermos incluídos.  Mas ficamos lisonjeados com a solicitação.

- Por fim, se você incluir revisores dessa forma, achamos que é uma prática recomendada incluir informações com links para a revisão, assim:
  
  ```
  person("Bea", "Hernández", role = "rev",
         comment = "Bea reviewed the package for rOpenSci, see 
                    https://github.com/ropensci/software-review/issues/116")
  ```

Estamos muito animados com esse desenvolvimento e como ele pode melhorar os incentivos para a revisão por pares. Agradecemos ao R-core por ter se juntado a nós e aos primeiros usuários que o testaram!

Atenciosamente,

```
c(
    person("Noam", "Ross", role = c("aut", "cre", "lbt")),
    person("Maëlle", "Salmon", role = c("rev", "med"),
           comment = "Comments to improve structure of the introduction")
    person("Karthik", "Ram", role = c("rev", "elt"),
         comment = "Fixed a small typo"),
    person("Scott", "Chamberlain", role = c("rev", "sce"),
           comment = "Agrees with Maëlle about the intro.")
  )
```

[Processo de revisão por pares do pacote R]: /blog/2017/09/01/nf-softwarereview/
[tempo]: /blog/2016/03/28/software-review/#review-takes-a-lot-of-time
[bagaço]: https://en.wikipedia.org/wiki/MARC_standards
[crédito transitivo]: https://openresearchsoftware.metajnl.com/articles/10.5334/jors.be/
[mudança]: https://github.com/wch/r-source/blame/cb9b0506cced030613e06fb92799a1d1807bc257/src/library/utils/R/sysdata.R#L37
[pacote DESCRIPTION arquivos]: https://github.com/search?utf8=%E2%9C%93&q=user%3Acran+filename%3ADESCRIPTION+person+role+rev+ropensci&type=Code
[JSS]: https://www.jstatsoft.org/
[JOSS]: https://joss.theoj.org/
[trabalhando em]: https://github.com/codemeta/codemeta/issues/177
[codemeta]: https://codemeta.github.io/



