---
slug: unconf18_recap_2
title: 'Proyectos Unconf18 2: middlechild, defender, ropsec, keybase'
date: '2018-06-06'
author:
- Karthik Ram
translator: 
- Juan Cruz Enrique
topicid: 1200
tags:
- comunidad
- eventos
- unconf
- unconf18
- seguridad
params:
  doi: 10.59350/3dxjb-mww35
---

Como parte de nuestra serie que resume todos los proyectos de la [UnConf de este año](/blog/2018/06/05/unconf18/) me complace sumergirme en todas las ofertas relacionadas con seguridad de este año. (Serie completa de resúmenes de proyectos: [resumen 1](/blog/2018/06/05/unconf_recap_1/), [resumen 2](/blog/2018/06/06/unconf18_recap_2/), [resumen 3](/blog/2018/06/07/unconf_recap_3/), [resumen 4](/blog/2018/06/08/unconf_recap_4/).) En el espíritu de exploración y experimentación de las desconferencias de rOpenSci, estos proyectos no son necesariamente productos acabados o en el ámbito de los paquetes de rOpenSci.

### `middlechild`

![logotipo de middlechild](/img/blog-images/2018-06-06-unconf18_recap_2/middle_child_hex.png)

**Resumen:** Este paquete proporciona una interfaz de R para el proxy Man-in-the-middle (MITM) y permite a los usuarios de R interceptar, modificar y observar el tráfico de red. El paquete proporciona funciones para descargar, instalar, configurar y ejecutar `mitmproxy`. Además de ayudar a probar paquetes API e identificar llamadas peligrosas, los usuarios de R también pueden dirigir el tráfico de su navegador a través de un puerto específico y capturar todo el tráfico de red en R.

**Equipo:** [Ildiko Czeller](https://github.com/czeildi), [Karthik Ram](https://github.com/karthik), [Bob Rudis](https://github.com/hrbrmstr), [Kara Woo](https://github.com/karawoo)

**GitHub:** <https://github.com/ropenscilabs/middlechild>

### `defender`

**Resumen:** La `defender` realiza un análisis estático del código de R y busca posibles vulnerabilidades de seguridad. Se puede usar sin instalar el paquete y se realiza una inspección más exhaustiva (aunque algo peligrosa) dentro de un contenedor Docker. El paquete no indica necesariamente a los usuarios si un fragmento de código es dañino, sino que señala cualquier cosa que justifique un examen más detenido.

**Equipo:** [Ildiko Czeller](https://github.com/czeildi), [Karthik Ram](https://github.com/karthik), [Bob Rudis](https://github.com/hrbrmstr), [Kara Woo](https://github.com/karawoo)

**GitHub:** <https://github.com/ropenscilabs/defender>

### `ropsec`

**Resumen:** Este paquete permite a los usuarios ejecutar toda una serie de comprobaciones de auditoría en su sistema local y genera un informe sobre las vulnerabilidades y las protecciones activadas.

**Equipo:** [Ildiko Czeller](https://github.com/czeildi), [Karthik Ram](https://github.com/karthik), [Bob Rudis](https://github.com/hrbrmstr), [Kara Woo](https://github.com/karawoo)

**GitHub:** <https://github.com/ropenscilabs/ropsec>

### `keybase`

**Resumen:** Este paquete proporciona una fina envoltura alrededor de la API de keybase que permite a los usuarios llamar a funciones de línea de comandos desde R. Además de permitir a los usuarios cifrar y descifrar archivos, el paquete permite a los nuevos usuarios generar fácilmente claves y firmar sus commits de Github.

**Equipo:** [Ildiko Czeller](https://github.com/czeildi), [Karthik Ram](https://github.com/karthik), [Bob Rudis](https://github.com/hrbrmstr), [Kara Woo](https://github.com/karawoo)

**GitHub:**  <https://github.com/ropenscilabs/keybase>

¡Busca mañana el próximo post con proyectos de unconf18!


