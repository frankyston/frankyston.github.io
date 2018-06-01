---
title: Array Associativos
date: 2018-06-01 19:00
tags: ruby, tips
author: Frankyston Lins
layout: post
fb:
  title: 'Array associativos'
  description: 'Como construir arrays associativos no ruby'
  image:
    url: /images/portfolio/code-ruby.jpg
    type: image/jpg
    width: 1608
    height: 1206
---

Em alguns momentos queremos trabalhar com _**arrays**_. Só que não podemos trabalhar com dados nomeados como é comum em um __**Hash**__.

Para isso existe dois métodos muito legais que podemos usar caso deseje trabalhar com arrays e de forma nomeadas, são elas __**assoc**__ e __**rassoc**__.

O exemplo a seguir criamos um array com dois elementos, cara elemento tem dois indices, o primeiro é o nome do indice e o segundo é o valor, usamos o **assoc** para para buscar um elemento pelo indice.

<script src="https://gist.github.com/frankyston/5d04177f784784bd6532d2ec3f18e37f.js"></script>

No próximo exemplo vamos usar o **reassoc**, agora do lugar de ele buscar pelo no associado ele vai buscar pelo valor.

<script src="https://gist.github.com/frankyston/5de0a62c55db42c84aed7078ea2058ae.js"></script>

Viu como é simples trabalhar com arrays associativos?

Já precisou alguma vez fazer algo parecido? Conte pra gente como você fez, se tem sugestões de fazer diferente? comenta ai.

Abraço e até a próxima :)