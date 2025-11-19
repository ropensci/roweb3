---
slug: precompute-vignettes
title: Como pré-computar vinhetas de pacotes ou artigos de pkgdown
date: '2019-12-08'
author: Jeroen Ooms
topicid: 1893
tags:
- documentação
- pacotes
- notas técnicas
- r-universe
translator: Beatriz Milz
params:
  doi: '10.59350/hchzp-hy971'
---

Desde o início deste ano, passamos a [compilar automaticamente](/technotes/2019/06/07/ropensci-docs/) os arquivos binários e a renderizar a documentação com pkgdown para [todos os pacotes da rOpenSci](https://docs.ropensci.org). Um problema que encontramos é que alguns pacotes incluem vinhetas (*vignettes*) que exigem algumas ferramentas, dados, credenciais especiais, que não estão disponíveis em servidores de compilação genéricos.

Esta postagem explica como você pode incluir essas vinhetas e artigos em seu pacote .

## Sobre vinhetas de pacotes

Por padrão, o R recria automaticamente as vinhetas durante o `R CMD check` ou ao gerar sites pkgdown executando todo o código do R. Isso é útil porque fornece alguns testes extras do seu código e garante que a documentação seja reprodutível. No entanto, às vezes não é uma boa ideia executar o código em todos os servidores de compilação, todas as vezes. Por exemplo:

- Os exemplos da vinheta exigem algum software local especial ou uso de dados privados;
- O código se conecta a um serviço da Web que exige autenticação ou tem limites de uso;
- Você não quer martelar os serviços da Web para cada verificação de CMD;
- O código da vinheta leva muito tempo para ser executado.

Nesses casos, é melhor executar o código rmarkdown localmente e enviar uma vinheta no pacote que já contém a saída em R renderizada.

## A solução: fazer o knitting do rmarkdown localmente

Suponha que você tenha uma vinheta chamada `longexample.Rmd`. Para pré-computar a vinheta, renomeie o arquivo de entrada para algo que não seja reconhecido pelo R como rmarkdown, como, por exemplo: `longexample.Rmd.orig`. Em seguida, execute o knitr no diretório do pacote para executar e substituir o código R no rmarkdown:

```r
# Execute the code from the vignette
knitr::knit("vignettes/longexample.Rmd.orig", output = "vignettes/longexample.Rmd")
```

O novo arquivo de saída `longexample.Rmd` agora contém markdown com a saída em R já executada. Portanto, ele pode ser tratado como uma vinheta normal, mas o R pode convertê-lo em html instantaneamente sem que você precise executar novamente o código R a partir do rmarkdown.

Os [pacote jsonlite](https://github.com/jeroen/jsonlite/tree/v1.6/vignettes) mostra um exemplo do mundo real. Nesse caso, pré-computei vinhetas que acessam APIs da Web para evitar que os serviços sejam prejudicados (e possivelmente banir os servidores de verificação).

## Salvando figuras de vinhetas

Um problema com esse truque é que, se a saída da vinheta incluir figuras, você precisará armazenar as imagens na pasta de vinhetas. Também é uma boa ideia nomear explicitamente seus pedaços de rmarkdown knitr, para que as imagens tenham nomes de arquivo que façam sentido.

Nosso pacote recentemente incorporado [eia](https://github.com/ropensci/eia/tree/master/vignettes) de Matt Leonawicz, é um bom exemplo. Esse pacote fornece um cliente R para a API de dados abertos da Administração de Informações sobre Energia dos EUA. A página de [documentação do pacote eia](https://docs.ropensci.org/eia/articles/) é gerada automaticamente para cada commit no [servidor de documentação da rOpenSci](https://ropensci.org/technotes/2019/06/07/ropensci-docs/), embora o código nas vinhetas realmente exija uma chave de API (que o servidor de documentação não tem).

{{< figure alt="captura de tela"  src="W5NDdOA.png" link="https://docs.ropensci.org/ei">}}

O [diretório de vinhetas do eia](https://github.com/ropensci/eia/blob/master/vignettes/) contém os arquivos de entrada `Rmd.orig` e os arquivos `.Rmd` pré-computados pelo autor do pacote. Observe também que o diretório de vinhetas contém um script útil chamado [precompile.R](https://github.com/ropensci/eia/blob/master/vignettes/precompile.R) que facilita para o autor do pacote atualizar as vinhetas de saída localmente.

## Não se esqueça de atualizar

A desvantagem dessa abordagem é que os documentos não são mais atualizados automaticamente quando o pacote é alterado. Portanto, você só deve pré-computar as vinhetas e os artigos que são problemáticos e fazer uma anotação para que a vinheta seja refeita ocasionalmente, por exemplo, antes do lançamento de um pacote. Adicionando um [script](https://github.com/ropensci/eia/blob/master/vignettes/precompile.R) às pastas de vinhetas para que você faça isso pode ser um lembrete útil.


