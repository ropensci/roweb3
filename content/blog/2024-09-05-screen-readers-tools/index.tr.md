---
slug: ekran_okuyucularla_r_kullanımı_i̇çin_kaynaklar
title: Ekran Okuyucularla R Kullanımı İçin Kaynaklar
author: Liz Hare
editor: Alican Cagri Gokcek
date: '2024-09-05'
tags:
- TEKNİK NOTLAR
- ekran okuyucular
- Şampiyonlar programi
- topluluk
- erişilebilirlik
description: R'yi ekran okuyucularla kullanmak için araçlar ve kaynaklar.
---

R, istatistiksel hesaplama için bir dil ve ortamdır.
R ile etkileşim için çeşitli araçlar ve yaklaşımlar vardır, ancak hepsi ekran okuyucularla erişilebilir değildir.
Bu kılavuz, farklı işletim sistemlerindeki ekran okuyucu kullanıcılarına sunulan araçlar ve tekniklere genel bir bakış sunarken, R ortamında gezinmelerine yardımcı olacak pratik ipuçları ve kaynaklar da sağlamaktadır.
Bu kılavuz eksiksiz olmayabilir, ancak bizler için değerli bir başlangıç noktası olmaya hizmet edeceğini umuyorum. 
Bu kılavuzu daha da geliştirebilmek için diğer kullanıcıların  önerilerini bekliyoruz.


## Nereden başlamalı?


Bu bölümdeki araç ve kaynak setleri tüm işletim sistemleri için geçerlidir.


[The R Project for Statistical Computing](https://www.r-project.org) Windows, Linux ve Mac için R'yi indirebileceğiniz sitedir.


R'yi yüklediğinizde, temel istatistiksel işlevlere sahiptir.
Bu kuruluma "base R" (temel R) adını veriyoruz.
Kullanıcılar R dilinde paketler yazarak fonksıyonlar eklerler.
Dr. Jonathan Godfrey, base R fonksiyonlarından daha erişilebilir olan metin veya Braille formatında istatistiksel çıktılar üreten BrailleR adlı bir paket yazmıştır.
[Dr. Godfrey'in web sitesi](https://r-resources.massey.ac.nz/BrailleR/) bu paket hakkında bilgilerin yanı sıra Braille veya ekran okuyucu kullanıcısı olarak R kullanımı hakkında genel tavsiyeler içermektedir.


[Kör R Kullanıcıları posta listesi](https://www.nfbnet.org/mailman/listinfo/blindrug_nfbnet.org) R kullanımı hakkında yanıtlar için gidebileceğiniz başka bir kaynaktır.


## R ile nasıl etkileşim kuruyorsunuz?


Olasılıklar şunları içerir:


- R'yi bir [terminaldeki komut isteminde çalıştırmak](https://tr.wikipedia.org/wiki/Terminal_emülatörü). Bu, komutlarınızı ve çıktılarınızı kaydetmemek gibi büyük bir dezavantaja sahiptir.
- R scriptlerini (R komutu grupları) yazmak için bir metin editörü kullanmak ve bunları [komut satırından göndermek](https://tr.wikipedia.org/wiki/Komut_satırı). Bu, birçok görme engelli kullanıcı için tercih edilen bir yaklaşımdı, ancak etkileşimli araçtan daha az kullanışlıdır.
- R'nin GUI'sini (grafiksel kullanıcı arayüzü) kullanmak. Bu Windows'ta erişilebilir olabilir, ancak Mac'te erişilebilir değildir.
- R kodu yazmak, düzenlemek, göndermek ve yeniden kullanmak için erişilebilir bir entegre geliştirme ortamı (IDE) kullanmak (sonraki bölüme bakıniz).


### IDE'ler ve İşletim Sistemleri


Bir IDE, aynı ortamda bir dizi araç sağlayarak programcıları verimli bir şekilde yazılım geliştirmede destekleyen bir yazılımdır. Piyasada çeşitli IDE'ler bulunmaktadır.
IDE'lerin komut isteminde veya R GUI'sinde çalışmaya göre çeşitli avantajları vardır:


- Kodu çalıştırmak ve sonuçları gözden geçirmek için özelleştirilmiş  komutlar.
- Kullanıcıya uyumsuz parantezleri bildirmek gibi şeyler yaparak düzenlemeye yardımcı olmak.
- Kod düzenleme ve çıktı okuma arasında kolayca geçiş yapmak.
- Çalışmanızı kaydetme ve daha sonra tekrar kullanma kolaylığı.


Popüler RStudio IDE, hiçbir platformda ekran okuyucu kullanıcıları için erişilebilir değildir.
Öğretmenlerin, görme engelli öğrencilerin bu ortama erişemeyeceklerini ve bu nedenle düğmelerini veya kısayollarını kullanamayacaklarını anlamaları çok önemlidir. 
Aynı durum dokümantasyon yazanlar için de geçerlidir.


#### Windows


Birçok görme engelli R kullanıcısı, ekran okuyucuları ile [Visual Studio Code (VS Code)](https://code.visualstudio.com) IDE kullanmaktadır.
[VS Code için R uzantısı](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)
R'de çalışmayı daha kolay hale getirmek için ek işlevler sağlar.

Windows'ta R ile çalışmak için ikinci bir seçenek [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/about) (WSL) yüklemektir. 
WSL ile Windows üzerinde bir Linux komut satırı ortamı çalıştırabilirsiniz. 
NVDA veya JAWS kullanarak Terminal'e erişebilirsiniz.
Ve Terminaldeki bir R oturumuna erişebilir ya da Windows veya Linux işletim sisteminden seçtiğiniz metin editöründe girdileri  ve çıktıları okuyabilirsiniz.
Bu, hem R hem de Linux hakkında bilgi edinmek isteyen deneyimli NVDA veya JAWS kullanıcıları için harika bir seçenek olacaktır.


#### Mac ve Linux


Aşağıda listelenen yazılımlar, R ile çalışmak için bir ortam sağlamak üzere birlikte çalışır:


- [Emacs](https://www.gnu.org/software/emacs/) güçlü ve özelleştirilebilir bir IDE'dir.
Emacs,  R ile kullanılabilir, ancak ilk başta öğrenilmesi gereken birçok komut vardır.
- [Emacspeak](https://github.com/tvraman/emacspeak) Emacs ile Linux (veya Mac) terminalinde kullanılmak üzere özel olarak tasarlanmış bir ekran okuyucudur.
 Emacspeak, terminalde Apple'ın yerel ekran okuyucusu VoiceOver'dan çok daha iyi çalışıyor.
 Emacspeak güçlüdür ancak birçok klavye komutunu öğrenmeyi de gerektirir.
- [Emacs Speaks Statistics(ESS)](https://ess.r-project.org) Emacs'a ekleyebileceğiniz, kodu düzenlemenize ve göndermenize ve çıktınızı başka bir metin penceresinde görüntülemenize olanak tanıyan bir pakettir.
 ESS, R için emacs ortamını özelleştirir.
- Bir diğer kullanışlı emacs paketi ise [Polymode](https://polymode.github.io) R Markdown kullanarak raporlar ve slaytlar gibi HTML formatında çıktısını aldığınızda çok erişilebilir olan belgeler üretmenizi kolaylaştırır.


VScode'u Mac üzerinde en son test ettiğimde VoiceOver ile tam olarak erişilebilir değildi.


## Faydalı R Özellikleri


R Markdown ve `quarto` kullanışlı R araçlarıdır.
Hem düz metin hem de R kodu içeren tek bir metin dosyası oluşturmanıza olanak tanır.
Ortaya çıkan belge hem çalışmanızın metin açıklamasını hem de R çıktısını gösterebilir.
Bu araçlar çıktı olarak çeşitli dosya türleri üretir.
HTML çıktısında, gören meslektaşlara benzer şekilde gezinmek kolaydır.
Bu erişilebilirlik olanağı, bu araçları raporlar, ev ödevleri, web siteleri ve slayt sunumları için ideal hale getirir.


Buraya dokümantasyon eklemedim çünkü RStudio'nun kullanıldığını varsaymayan dokümantasyon bulmak zor.


## R Kullanmayı Öğrenme


R'nin dokümantasyonlarını okuma ve öğrenme pratiği yapmak önemlidir, ancak bunları anlamayı öğrenmek zaman alır. 
Dışarıda aşağıdakiler de dahil olmak üzere birçok yararlı kaynaklar vardır:


- UCLA'nın R üzerinde basit metin formatlarında harika “Öğrenme Moddülleri ve Sıkça Sorulan Sorular” [Learning Modules and FAQs](https://stats.oarc.ucla.edu/r/) isimli bir öğrenme kaynağı bulunmaktadır.
- Yapmak istediğiniz analiz türüne ilişkin örnekler ve öğreticiler (video olmadıkları sürece) için Web'de arama yapmak çok yardımcı olabilir. 
Ekran okuyucu navigasyonunu engelleyen çok sayıda reklam içeren ticari sitelerden kaçının.
Ben kişisel ya da akademik sitelerde barındırılanları tercih ediyorum.
- [Oscar Baruffa'nın web sitesi](https://www.bigbookofr.com) R hakkında ücretsiz, çevrimiçi kitapları listeler. 
Veri görselleştirmeleri dışında birçoğu oldukça erişilebilirdir. 
Ayrıca, birçoğu RStudio kullandığınızı varsayar, bu nedenle çalışmanızı kendi ortamınıza uyarlamanız gerekecektir.
- [Kitap Paylaşımı](https://bookshare.org) bazı ülkelerdeki görme engelli insanlar için elektronik bir kitap deposudur. 
R hakkında birçok kitapları vardır, ancak kitapların erişilebilirlikleri değişebilmektedir. 
Bazen kod parçacıkları eksik olabilmektedir ve bu da R öğrenimine yardımcı olmamaktadır. 
Yine de bazen bu kitaplar oldukça fayda sağlamaktadır.


## Özet


Bu kılavuz, BrailleR, VS Code ve Emacs gibi erişilebilir araçları vurgulayarak ekran okuyucu kullanıcılarının farklı işletim sistemlerinde R ile çalışmasının çeşitli yollarını özetlemiştir. Kullanıcılar bu seçenekleri keşfederek ihtiyaçlarına ve tercihlerine en uygun araçları seçebilirler.