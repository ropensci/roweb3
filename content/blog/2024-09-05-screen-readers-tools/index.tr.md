---
slug: ekran_okuyucularla_r_kullanımı_i̇çin_kaynaklar
title: Ekran Okuyucularla R Kullanımı İçin Kaynaklar
author: Liz Hare
editor: Yanina Bellini Saibene
date: '2024-09-05'
tags:
- TEKNİK NOTLAR
- ekran okuyucular
- şampi̇yonlar programi
- topluluk
- erişilebilirlik
description: R'yi ekran okuyucularla kullanmak için araçlar ve kaynaklar.
---

R, istatistiksel hesaplama için bir dil ve ortamdır.
R ile etkileşim için çeşitli araçlar ve yaklaşımlar vardır, ancak hepsi ekran okuyucularla erişilebilir değildir.
Bu kılavuz, R ortamında gezinmelerine yardımcı olacak pratik ipuçları ve kaynaklarla birlikte, farklı işletim sistemlerinde ekran okuyucu kullanıcılarının kullanabileceği araç ve tekniklere genel bir bakış sunmaktadır.
Bu kılavuz eksiksiz olmayabilir, ancak değerli bir başlangıç noktası olmasını umuyorum. Daha da geliştirebilmek için diğer kullanıcıların önerilerini bekliyoruz.

## Nereden başlamalı?

Bu bölümdeki araç ve kaynak seti tüm işletim sistemleri için geçerlidir.

[İstatistiksel Hesaplama için R Projesi](https://www.r-project.org) Windows, Linux ve Mac için R'yi indirebileceğiniz sitedir.

R'yi yüklediğinizde, temel istatistiksel işlevlere sahiptir.
Bu kuruluma "temel R" adını veriyoruz.
Kullanıcılar R dilinde paketler yazarak işlevsellik ekler.
Dr. Jonathan Godfrey, temel R işlevlerinden daha erişilebilir olan metin veya Braille formatında istatistiksel çıktılar üreten BrailleR adlı bir paket yazmıştır.
[Dr. Godfrey'in web sitesi](https://r-resources.massey.ac.nz/BrailleR/) bu paket hakkında bilgilerin yanı sıra Braille veya ekran okuyucu kullanıcısı olarak R kullanımı hakkında genel tavsiyeler içermektedir.

Bu [Kör R Kullanıcıları posta listesi](https://www.nfbnet.org/mailman/listinfo/blindrug_nfbnet.org) R kullanımı hakkında yanıtlar için gidebileceğiniz başka bir yerdir.

## R ile nasıl etkileşim kuruyorsunuz?

Olasılıklar şunları içerir:

- R'yi bir terminaldeki komut isteminde çalıştırmak. Bu, komutlarınızı ve çıktılarınızı kaydetmemek gibi büyük bir dezavantaja sahiptir.
- Komut dosyaları (R komut grupları) yazmak için bir metin editörü kullanmak ve bunları komut satırında göndermek. Bu, birçok görme engelli kullanıcı için tercih edilen bir yaklaşımdı, ancak etkileşimli araçtan daha az kullanışlıdır.
- R'nin GUI'sini (grafiksel kullanıcı arayüzü) kullanma. Bu Windows'ta erişilebilir olabilir, ancak Mac'te erişilemez.
- R kodu yazmak, düzenlemek, göndermek ve yeniden kullanmak için erişilebilir bir entegre geliştirme ortamı (IDE) kullanmak (sonraki bölüme bakın).

### IDE'ler ve İşletim Sistemleri

Bir IDE, aynı ortamda bir dizi araç sağlayarak programcıları verimli bir şekilde yazılım geliştirmede destekleyen bir yazılımdır. Piyasada çeşitli IDE'ler bulunmaktadır.
IDE'lerin komut isteminde veya R GUI'sinde çalışmaya göre çeşitli avantajları vardır:

- Kodu çalıştırmak ve sonuçları gözden geçirmek için özel komutlar.
- Kullanıcıya uyumsuz parantezleri bildirmek gibi şeyler yaparak düzenlemeye yardımcı olun.
- Kod düzenleme ve çıktı okuma arasında kolayca geçiş yapın.
- Çalışmanızı kaydetme ve daha sonra tekrar kullanma kolaylığı.

Popüler RStudio IDE, hiçbir platformda ekran okuyucu kullanıcıları için erişilebilir değildir.
Öğretmenlerin, görme engelli öğrencilerin bu ortama erişemeyeceklerini ve bu nedenle düğmelerini veya kısayollarını kullanamayacaklarını anlamaları çok önemlidir. Aynı durum dokümantasyon yazanlar için de geçerlidir.

#### Windows

Birçok görme engelli R kullanıcısı [Visual Studio Code (VS Code)](https://code.visualstudio.com) Ekran okuyucular ile IDE.
Bu [VS kodu için R uzantısı](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)
R'de çalışmayı daha kolay hale getirmek için ek işlevler sağlar.
Windows'ta R ile çalışmak için ikinci bir seçenek [Linux için Windows Alt Sistemi] (https://learn.microsoft.com/en-us/windows/wsl/about) (WSL) yüklemektir. 
WSL ile Windows üzerinde bir Linux komut satırı ortamı çalıştırabilirsiniz. 
NVDA veya JAWS ekran okuyucularını kullanarak Terminal'e erişebilirsiniz.
Terminaldeki bir R oturumuna erişilebilir ya da Windows veya Linux işletim sisteminden seçtiğiniz metin editöründe girdi ve çıktıları okuyabilirsiniz.
Bu, hem R hem de Linux hakkında bilgi edinmek isteyen deneyimli NVDA veya JAWS kullanıcıları için harika bir seçenek olacaktır.
#### Mac ve Linux

Aşağıda listelenen yazılımlar, R ile çalışmak için bir ortam sağlamak üzere birlikte çalışır:

- [Emacs](https://www.gnu.org/software/emacs/) güçlü ve özelleştirilebilir bir IDE'dir.
  R ile kullanılabilir, ancak ilk başta öğrenilmesi gereken birçok komut vardır.
- [Emacspeak](https://github.com/tvraman/emacspeak) Emacs ile Linux (veya Mac) terminalinde kullanılmak üzere özel olarak tasarlanmış bir ekran okuyucudur.
  Terminalde Apple'ın yerel ekran okuyucusu VoiceOver'dan çok daha iyi çalışıyor.
  Emacspeak güçlüdür ancak birçok klavye komutunu öğrenmeyi de gerektirir.
- [Emacs İstatistik Konuşuyor (ESS)](https://ess.r-project.org) Emacs'a ekleyebileceğiniz, kodu düzenlemenize ve göndermenize ve çıktınızı başka bir metin penceresinde görüntülemenize olanak tanıyan bir pakettir.
  R için emacs ortamını özelleştirir.
- Bir diğer kullanışlı emacs paketi ise [Polymode](https://polymode.github.io) R Markdown kullanarak raporlar ve slaytlar gibi HTML formatında çıktısını aldığınızda çok erişilebilir olan belgeler üretmenizi kolaylaştırır.

VScode'u Mac üzerinde en son test ettiğimde VoiceOver ile tam olarak erişilebilir değildi.

## Faydalı R Özellikleri

R Markdown ve `quarto` kullanışlı R araçlarıdır.
Hem düz metin hem de R kodu içeren tek bir metin dosyası oluşturmanıza olanak tanır.
Ortaya çıkan belge hem çalışmanızın metin açıklamasını hem de R çıktısını gösterebilir.
Bu araçlar çıktı olarak çeşitli dosya türleri üretir.
HTML çıktısında, gören meslektaşlara benzer şekilde gezinmek kolaydır.
Bu erişilebilirlik, bu araçları raporlar, ev ödevleri, web siteleri ve slayt sunumları için ideal hale getirir.

Buraya dokümantasyon eklemedim çünkü RStudio'nun kullanıldığını varsaymayan dokümantasyon bulmak zor.

## R Kullanmayı Öğrenme

R'nin belgelerini okuma ve öğrenme pratiği yapmak önemlidir, ancak bunları anlamayı öğrenmek zaman alır. Dışarıda aşağıdakiler de dahil olmak üzere birçok yararlı kaynak vardır:

- UCLA'nın harika [öğrenme modülleri ve SSS](https://stats.oarc.ucla.edu/r/) R üzerinde basit metin formatlarında.
- Yapmak istediğiniz analiz türüne ilişkin örnekler ve öğreticiler (video olmadıkları sürece) için Web'de arama yapmak çok yardımcı olabilir. Ekran okuyucu navigasyonunu engelleyen çok sayıda reklam içeren ticari sitelerden kaçının. Ben kişisel ya da akademik sitelerde barındırılanları tercih ediyorum.
- [Oscar Baruffa'nın web sitesi](https://www.bigbookofr.com) R hakkında ücretsiz, çevrimiçi kitapları listeler. Veri görselleştirmeleri dışında birçoğu oldukça erişilebilirdir. Ayrıca, birçoğu RStudio kullandığınızı varsayar, bu nedenle çalışmanızı kendi ortamınıza uyarlamanız gerekecektir.
- [Kitap Paylaşımı](https://bookshare.org) bazı ülkelerdeki basılı engelli insanlar için elektronik bir kitap deposudur. R hakkında birçok kitapları var, ancak erişilebilirlik değişebiliyor. Bazen kod parçacıkları eksik olabiliyor, bu da yardımcı olmuyor. Yine de bazen bu kitaplar oldukça yardımcı olabiliyor.

## Özet

Bu kılavuz, BrailleR, VS Code ve Emacs gibi erişilebilir araçları vurgulayarak ekran okuyucu kullanıcılarının farklı işletim sistemlerinde R ile çalışmasının çeşitli yollarını özetlemiştir. Kullanıcılar bu seçenekleri keşfederek ihtiyaçlarına ve tercihlerine en uygun araçları seçebilirler.


