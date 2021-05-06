import 'package:nereye_gitmeli_app/Classes/Places/Places.dart';
import 'package:nereye_gitmeli_app/Classes/Foods/Foods.dart';

import '../Sehir/Sehir.dart';

class Data {
  List<Sehir> yurtici = [
    Sehir(
        id: 1,
        adi: 'Bursa',
        aciklama:
            "Bursa, Türkiye'nin bir ili ve en kalabalık dördüncü şehri. 2020 itibarıyla 3.101.833 nüfusa sahiptir. 2016 Dünya Yaşanabilir Şehirler sıralamasında Dünya'da 28. Türkiye'de 1. sırada yer almaktadır. Marmara Bölgesinin Güney Marmara bölümünde, 40° batı boylam ve 29° kuzey enlem daireleri arasında yer alır. Eski adı Hüdavendigâr'dır. Kuzeyinde Marmara Denizi ve Yalova, kuzeydoğuda Kocaeli ve Sakarya, doğuda Bilecik, güneyde Kütahya ve batıda Balıkesir illeri ile çevrilidir.\n\nEkonomik açıdan Türkiye'nin en gelişmiş kentlerinden biri olan Bursa doğal ve tarihsel zenginlikleriyle de önem taşır. Bursa'da en çok Osmanlı İmparatorluğu'nun kuruluş dönemine ait tarihî eserlerin bulunmasının sebebi ise, Bursa'nın Osmanlı Devleti'nin ilk başkenti olmasıdır. \n\nBursa alışveriş merkezleri, parkları, müzeleri ve çarşısıyla bölgede öne çıkar. Ayrıca Bursa Marmara bölgesinin İstanbul'dan sonra gelen ikinci büyük şehridir. Türkiye'nin en önemli birkaç sanayi kentinden biridir. Şehir İstanbul'dan sonra en büyük ikinci ihracatı gerçekleştirmektedir. Şehrin futbol takımı Bursaspor 2009-10 sezonunda Süper Lig şampiyonudur.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Koza Han',
              aciklama: "Koza Han'ın inşa kitabesi yoktur fakat İstanbul'da II. Bayezid için inşa edilen büyük cami ve külliyenin Vakıflar Genel Müdürlüğü'ndeki 1505 tarihli vakfiye suretine göre, geliri bu külliyeye vakfedilmiş olan Koza Han'ın yapımı Mart 1490'da başlamış, açılışı 29 Eylül 1491'de yapılmıştır. Ancak vakfiyede adı geçen kervansarayın Koza Han değil yakınındaki Pirinç Han olduğu, Koza Han'ın yerinin çeşitli kimselerden 1490'da satın alındığı ortaya konulmuştur.",
              fotograf: 'Koza Han'),
          Places(
              adi: 'Muradiye Külliyesi',
              aciklama: "Muradiye Külliyesi, Sultan II. Murad'ın Bursa'da 1425-1426 yıllarında yaptırdığı külliye. Bulunduğu semte de ismini verir.\n\nŞehrin etrafa doğru yayılmasını ve açılımını sağlamak amacıyla yaptırılan külliye, Muradiye Camii, hamam, medrese, imaret ve sonraki yıllarda yaptırılmış 12 türbeden oluşur. Sonraki yıllarda çok sayıda hanedan mensubunun gömülmesiyle saraya ait bir kabristan görünümü kazanmış ve İstanbul’dan sonra en çok saraylıyı barındıran ikinci hazire haline gelmiştir. Bursa'nın çeşitli istimlaklerle kaldırılan mezar taşları ve türbelerinin kitabeleri de caminin haziresine getirilmiştir.\n\nKülliye, 2014 yılında “Bursa ve Cumalıkızık: Osmanlı İmparatorluğunun Doğuşu” Dünya Miras Alanı 'nın bileşenlerinden birisi olarak UNESCO Dünya Mirası Listesi'ne girmiştir.",
              fotograf: 'Muradiye külliyesi'),
          Places(
              adi: 'Ulu Camii',
              aciklama: "Bursa Ulu Cami, Bursa’da I. Bayezid tarafından 1396-1400 yılları arasında yaptırılmış dini yapıdır.\n\nBursa’nın tarihi sembollerinden olan cami, Bursa kent merkezinde, Atatürk Caddesi üzerindedir. Çok ayaklı cami şemasının en klasik ve anıtsal örneği sayılır. Yirmi kubbeli yapı, Türkiye’deki iç cemaat yeri en geniş camidir. Mimarın Ali Neccar veya Hacı İvaz olduğu sanılmaktadır. Caminin kündekari tekniği ile yapılmış minberi Selçuklu oyma sanatından Osmanlı ahşap oymacılığı sanatına geçişin en önemli örneklerinden biri kabul edilen değerli bir sanat eseridir.",
              fotograf: 'Ulu camii'),
        ],
      yemekler: [
        Foods(ad: 'İskender Kebabı', aciklama: 'İskender Kebabı açıklaması', fotograf: 'iskenderkebabi'),
        Foods(ad: 'Kemalpaşa Tatlısı', aciklama: 'Kemalpaşa Tatlısı açıklaması', fotograf: 'kemalpasatatlisi'),
        Foods(ad: 'Pideli Köfte', aciklama: 'Pideli Köfte açıklaması', fotograf: 'pidelikofte'),
      ]
    ),
    Sehir(
        id: 2,
        adi: 'Bolu',
        aciklama:
            "M.Ö. 1200’lü yıllarda bütün Hitit toprakları gibi Bolu da Friglerin elindeydi. M.Ö. 6. asırda Persler bölgeye hakim oldular. M.Ö. 336’da Büyük İskender Persleri yenerek Anadolu’nun bir çok yeri gibi Bolu’yu da ele geçirdi. Büyük İskender’in ölümü üzerine Makedonya yıkılınca Bolu bölgesinde Bitinya Krallığı kuruldu. Yazılı belgeler, o dönemlerden kalan arkeolojik eserler ve tarih kaynaklarına göre, Trak göçleri sonunda Sakarya ve Filyos Nehrinin yayı içine yerleşen halk “Bithyn” ismi ile anılıyordu. Bu yüzden Bolu’nun da içinde bulunduğu Kuzeybatı Anadolu’ya “Bithynia” denilmiştir. Bithynler tarafından Salonia Campus denilen Bolu Ovası ve çevresinin adı Romalılar tarafından “Claudio Polis” olarak değiştirilmiştir.\n\n"
            "Bolu, Karadeniz iklimi ile karasal iklim arasındaki geçiş alanında bulunur. Karadeniz kıyısındaki ilçelerde Karadeniz ikliminin özellikleri ağır basarken; iç bölgelere gidildikçe, kıyıya paralel uzanan dağların Karadeniz üzerinden gelen nemli havanın önünü kesmesiyle iklim karasallaşır. Seben, Mudurnu ve Kıbrısçık, Gerede'nin en güneyi ve Dörtdivan'ın güneyinde karasal iklim özellikleri ağır basmaktadır.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Abant Gölü',
              aciklama: "Abant Gölü yeraltında meydana gelen tektonik çöküntüler sonucunda büyük taş bloklarının vadiyi doldurmasıyla oluşmuştur. Deniz seviyesinden yüksekliği 1328 m. yüzey genişliği 1.25 km² olup maksimum 18m. derinliktedir. Tektonik kökenli göl Kuzey Anadolu fay hattında bulunmaktadır. Abant Gölü’nü dağlardan gelen kar suları ve bir iki küçük dere beslemektedir. Gölden dışarı taşan temiz ve doğal su Dirgene Çayı’dır (Atıcı ve Obalı 2002). Abant Gölü çevresinde sıralanan dağların zirveleri tabiat parkının sınırlarını oluşturmaktadır. Tabiat parkının en yüksek noktası 1794m. ile Erenler Tepesi iken en düşük noktası 1328m. ile Abant Gölü seviyesidir (OBM,1991). Abant gölü kış aylarındaki hızlı hava soğumaları nedeni ile kıyıdan başlayarak tamamen donmaktadır.",
              fotograf: 'abant gölü'),
          Places(
              adi: 'Akkaya Travertenleri',
              aciklama: "Bolu'nun 10 kilometre güneybatısında, Mudurnu yolu üzerinde bulunan Akkaya Travertenleri, “Bolu'nun Pamukkalesi” olarak ün yapmış olup, görülmeye değer bir güzelliğe sahiptir. Bolu ve Batı Karadeniz Bölgesi’ndeki tek örnek olan, doğal yapısını aynen koruyan nadir çevrelerden biri olan Akkaya Travertenleri, doğu–batı doğrultusunda 250 metre uzunlukta bir oluşum ve bu oluşumun 100 metre batısında 50 metre uzunlukta farklı bir oluşum daha bulunmaktadır. Akkaya Travertenleri yemyeşil doğa ile bütünleşen bir manzara sergiler. Özellikle yaz aylarında traverten havuzları serinlemek amacıyla çok ilgi görmektedir. Ayrıca dinlenmek ve piknik yapmak isteyenler için ideal bir yer olan Akkaya Mevkii'nde özel sektörce işletilen günübirlik turistik tesisler faaliyet göstermektedir.",
              fotograf: 'akkaya travertenleri'),
          Places(
              adi: 'Kartalkaya Kayak Merkezi',
              aciklama: "Kartalkaya, Bolu ilinin doğu tarafında Köroğlu Dağları'nda bir kayak merkezidir. Türkiye'nin sayılı kayak merkezlerindendir. Grand Kartal Otel, Kartal Otel, Dorukkaya Otel ve Golden Key Kartalkaya her kış kayakseverleri ağırlamaktadır. Kayak, kızak ve snowboard kiralama hizmeti de vardır. Oteller meydanında Cafe Society yer alır. Ulaşımda sıkıntı görülmez. Oteller tatil ve eğlence amacı için oldukça yeterli sayılır. Manzara dev çam ağaçları ile süslüdür. Oteller 2000 m. yükseklikte bulunmaktadır. Zirve yaklaşık 2200 metredir. Zirve kayalık olup ve alpin çayırlarla kaplıdır. Kış mevsiminde kar kalınlığı zaman zaman 3 metreyi bulur. Kayak sezonu Aralık - Nisan'dır. Manzara sadece çam ağaçlarıyla sınırlı değildir. Bolu dağlarını ve Köroğlu dağları rahatlıkla görülebilir. Eteklerinde yaylalar bulunmaktadır. Yazın, doğa yürüyüşü gibi aktiviteler de yapılmaktadır.",
              fotograf: 'kartalkaya kayak merkezi'),
        ],
        yemekler: [
          Foods(ad: 'Abant Kebabı', aciklama: 'Abant Kebabı açıklaması', fotograf: 'abantkebabi'),
          Foods(ad: 'Kaldırık Dolması', aciklama: 'Kaldırık Dolması açıklaması', fotograf: 'kaldirikdolmasi'),
          Foods(ad: 'Mengen Pilavı', aciklama: 'Mengen Pilavı açıklaması', fotograf: 'mengenpilavi'),
        ]
    ),
    Sehir(
        id: 3,
        adi: 'Denizli',
        aciklama:
            "Denizli, Türkiye'nin bir ili ve en büyük yirmi üçüncü kent merkezidir. Sanayi, ticaret, tarım, turizm, eğitim, kültür ve sanat alanlarında ülkenin en gelişmiş illerinden biridir. İl nüfusu 1.040.915 kişidir Tekstil ürünleri ve yöreye has Denizli horozu ile meşhurdur. Anadolu Yarımadası'nın güneybatı, Ege Bölgesi'nin güneydoğusunda yer almaktadır. Ege ve Akdeniz Bölgeleri arasında bir geçit durumundadır. \n\n"
            "Bir sanayi, ihracat ve ticaret merkezi olan Denizli, aynı zamanda altmış beş bine yaklaşan üniversite öğrencisine ev sahipliği yapmaktadır. Bir yılda milyonlarca yerli ve yabancı turisti ağırlayan il, bir turizm kenti olmasının yanı sıra düzenlenen yerel, ulusal ve uluslararası etkinliklerle eğitim, kongre, kültür ve sanat merkezi özelliğindedir. GEKA (Güney Ege Kalkınma Ajansı) merkezi Denizli'dedir.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Laodicea Kenti',
              aciklama: "Laodikeia Antik Kenti, Denizli İli’nin 6 km. kuzeyinde yer almaktadır. Helenistik kent, M.Ö. 3. yy.’ın ortalarında Seleukos Kralı II. Antiokhos tarafından karısı Laodike adına kurulmuştur. M.Ö. 130/129 yılında ise bölge tamamen Roma’ya (önce Cumhuriyet, sonra İmparatorluk) bağlanmıştır. Hıristiyanlığın ilk 7 kilisesinden birine sahip olan kent, Erken Bizans Dönemi’nde metropollük seviyesinde dini bir merkez haline gelmiştir. Laodikeia’da yapılan kazı çalışmaları, Erken Kalkolitik Dönem (Bakır Çağı, M.Ö. 5500’den M.S. 7. yy.’a kadar kesintisiz yerleşimlerin varlığını ortaya koymuştur. Laodikeia, önemli arkeolojik kalıntılara sahiptir.",
              fotograf: 'laodicea'),
          Places(
              adi: 'Ornaz Vadisi',
              aciklama:  "Denizli şehir merkezine 8 km uzaklıkta bulunan Ornaz Vadisi, doğa yürüyüşü yapmayı sevenler, kampçılar ve doğa fotoğrafçıları tarafından oldukça rağbet gören bir yer. Vadi içerisinde yürürken kayalıkların arasından akan tertemiz şelale sularını görebilirsiniz. Şelale yanına çadırınızı kurabilir ateş yakabilirsiniz. ",
              fotograf: 'ornaz vadisi'),
          Places(
              adi: 'Pamukkale Travertenleri',
              aciklama: "Akan sulardan kalan karbonat mineralleri ve kent kaplıcalarını kapsayan Pamukkale Travertenleri, Menderes Nehri'nde bulunmaktadır. \n\nHem Türkiye'nin hem de Denizli'nin sembolü durumda olan bu doğal alanda çıkan su kaynaklarının içindeki karbondioksitin uçması ve su içerisindeki kalkerin çökmesi ile kristalleşmiş olan travertenler, mucizevi bir güzelliği sahiptir. Bu eşsiz, doğal ve pamuk tarlasını andıran alan aynı zamanda UNESCO Dünya Miras Listesi'ne alınmıştır.",
              fotograf: 'pamukkale travertenleri'),
        ],
        yemekler: [
          Foods(ad: 'Biber Tatari', aciklama: 'Biber Tatari açıklaması', fotograf: 'bibertatari'),
          Foods(ad: 'Börülce Böreği', aciklama: 'Börülce Böreği açıklaması', fotograf: 'borulceboregi'),
          Foods(ad: 'Yen Böreği', aciklama: 'Yen Böreği açıklaması', fotograf: 'yenboregi'),
        ]),
    Sehir(
        id: 4,
        adi: 'Muğla',
        aciklama:
           "Ege Bölgesinin güneyinde yer alan Muğla, Asar dağı eteklerinde ovaya doğru yayılmış, kendine has mimarisi, daracık sokakları ve herbiri turizm merkezi ilçeleri ile tam bir turizm cennetidir.\n\n"
            "Yerleşim tarihi M.Ö. 3000’lerdeki Doğu Yunanistan ile Batı Anadolu kıyıları arasındaki karşılıklı göç hareketleriyle başlamaktadır. Bölgedeki ikinci büyük göç olayı M.Ö. 12. yüzyıl başlarındadır. Muğla bölgesine hâkim olan Karialılardan sonra M.Ö. 1200’lerde gelen kolonistlerin egemenliği görülür. Daha sonra Pers, Makedonya egemenliğine giren bölge Büyük İskender’in ölümüyle sırasıyla Seleukosların, Rodos Krallığı’nın, Roma ve Bizans İmparatorluklarının egemenliğine girmiştir.\n\n"
            "Muğla’da Akdeniz iklimi etkisinde kalan kara iklimi hüküm sürmektedir. Yazlar sıcak ve kurak, kışlar ılık ve yağışlıdır. Yağışlar genellikle Kasım ve Mart ayında yoğundur. Yıllık sıcaklık ortalaması 14.9’dur.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Dalaman Çayı',
              aciklama: "Dalaman çayı, Gölhisar ilçesinin güneyindeki Yeşilgöl dağlarından doğar, Ortaca ve Dalaman ilçe sınırlarını çizerek, Akdeniz'e dökülür. \n\nDalaman çayı Akdeniz ve Ege bölgelerinin sınırını oluşturur. Toplam uzunluğu 229 km, havza alanı 3.500 km²'dir. Yukarı çığırında dar ve derin vadide hızlıca akan çay, aşağı çığırında taşıdığı alüvyonlarla Dalaman ovasını oluşturur. Ovadaki akış daha yavaştır. Çay üzerinde zorluk derecesi 3-4 olan, 26 km'lik alanda rafting yapılır. Dalaman havaalanın yapılmasından sonra turizm açısından daha da önemli hale gelmiştir. Üzerine Bereket barajı ve Akköprü barajı yapılmıştır",
              fotograf: 'dalaman çayı'),
          Places(
              adi: 'Saklıkent Kanyonu',
              aciklama: "6 Haziran 1996 tarihinde kurulan Saklıkent Milli Parkı, Türkiye'nin güneybatısındaki bir milli parktır. Milli park bir kanyondur ve Muğla ilinde, Seydikemer'de, Fethiye'ye 50 km (31 mil) uzaklıkta yer almaktadır. Thé Kanyon, Antalya iline bağlı Kaş'a 65 km uzaklıktadır. \n\nKanyon, dünyanın en derinlerinden biri olan 300 m (980 ft) derinliğinde ve 18 km (11 mil) uzunluğundadır. Binlerce yıl boyunca akan suların kayaların aşınmasıyla oluşmuştur. Kış aylarında su seviyesi yükseldiğinden, ziyaretçiler kanyona yaz aylarında sadece daha derin kısımlardan girebilirler. Kanyonun 4 km'lik kısmı (2,5 mil), Toros Dağları'ndaki karların çoğunun eridiği ve Akdeniz'e giderken geçtiği Nisan ayından sonra yürünebilir. Saklıkent, Türkçe'de gizli şehir anlamına geliyor. 16 km'lik tam uzunluğu ancak profesyonel ekipman ve gelişmiş kanyon geçişi bilgisi ile keşfetmek mümkündür. Bazı macera merkezleri, bir gecede Biwak kampı ve rappel için yaklaşık 30 şelale ile rehberli turlar sunar.",
              fotograf: 'Saklıkent kanyonu'),
          Places(
              adi: 'Ölüdeniz',
              aciklama: "Ölüdeniz, Muğla ilinin Fethiye ilçesine bağlı bir mahalledir. Ölüdeniz kumsalı yüzde seksen iki oyla 2006 yılında Dünya'nın en güzel kumsalı seçilmiştir.\n\n Belde, turizm açısından oldukça gelişmiştir. Likyalılarda ışık ve güneş diyarı, Ortaçağ'da 'Uzak Diyar' olarak tanınır, Anadolu'nun güneybatısında yer alan Teke Yarımadası'da bulunur. Türkiye'de bulunan deniz kulağı (lagün) oluşumlarından biridir. \n\nÖlüdeniz, adı gibi durgun bir göl niteliğindedir. En fırtınalı günlerde Belceğiz kıyıları dalgalarla boğuşurken, Ölüdeniz'de sadece çırpıntılar meydana gelir.",
              fotograf: 'ölüdeniz'),
        ],
        yemekler: [
          Foods(ad: 'Bodrum Mantısı', aciklama: 'Bodrum Mantısı açıklaması', fotograf: 'bodrummantisi'),
          Foods(ad: 'Sulu Muğla Kebabı', aciklama: 'sulu muğla kebabı açıklaması', fotograf: 'sulumuglakebabi'),
          Foods(ad: 'Sündürme', aciklama: 'sündürme açıklaması', fotograf: 'sundurme'),
        ]),
    Sehir(
        id: 5,
        adi: 'Eskişehir',
        aciklama:
            "Eskişehir, Türkiye'nin bir ili ve en kalabalık yirmi beşinci şehridir. 1993 yılında çıkarılan kanunla Büyükşehir Belediyesi olmuştur. Nüfusu 2020 yılı TÜİK istatistiklerine göre 888.828'dir. Ortasından Porsuk Çayı geçen şehir, içerisinde Osmangazi Üniversitesi, Eskişehir Teknik Üniversitesi ve Anadolu Üniversitesinin bulunması nedeniyle bir öğrenci kenti görünümündedir.\n\n"
            "Met helvası, nuga helvası, haşhaşlı çörek, kalabak suyu, çibörek ve lületaşı ile meşhurdur. Ayrıca balaban kebabı da Eskişehir mutfağında önemli bir yer almaktadır. İşlenebilir lületaşı, Türkiye'de yalnızca Eskişehir'de çıkarıldığı için Eskişehir taşı olarak bilinir. Türkiye'de Eskişehir ve Sivrihisar dolaylarında yetişen bir çoban köpeği olan akbaş da şehre ait önemli değerlerdendir.\n\n"
            "Eskişehir 2013 yılında Türk Dünyası Kültür Başkenti ve UNESCO Somut Olmayan Kültürel Miras Başkentliği unvanlarını taşımaktadır.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Odunpazarı',
              aciklama: "Şehrin ilk yerleşim yeridir. Eskişehir kent merkezinde yer alır ve diğer ilçelere göre yükseltisi daha fazladır. Bir rivayete göre Eskişehir'e yerleşmeyi düşünen ilk halk Odunpazarı ve şimdiki Porsuk Çayı'nın olduğu bölgeye birer koyun ciğeri asarlar. Hangisi çok dayanırsa orayı yerleşim bölgesi seçeceklerdir. Odunpazarı'na asılan ciğer daha geç bozulur ve ilk yerleşim burada oluşur.\n\nOdunpazarı'nın tarihî kent merkezi, UNESCO tarafından 2012'de Dünya Mirası Geçici Listesi'ne dahil edildi. 2019 yılında ise Japon mimar Kengo Kuma'nın tasarladığı Odunpazarı Modern Müze açılmıştır.",
              fotograf: 'Odunpazarı'),
          Places(
              adi: 'Porsuk Çayı',
              aciklama: "Porsuk Çayı (antik, Frigce: Tymbris ) İç Anadolu Bölgesi'nde bir ırmaktır. Aksu Dağı'nın kuzey yamacından inen Bayatçık Deresi ile Murat Dağı'nın kuzey yamacından inen Kızıltaş Suyu'nun birleşmesiyle doğan Porsuk Çayı, Sakarya Irmağı'nın en uzun (448 km) koludur. \n\nKütahya Ovası'ndan geçip Eskişehir kentinin güneybatısında yer alan ve 1948'de hizmete giren Porsuk I ve 1971'de hizmete giren Porsuk II barajları arkasında toplandıktan sonra, Eskişehir Ovası'ndan ve Eskişehir kentinden geçer; Yassıhöyük karşısında Sakarya Irmağı'na ulaşır. \n\nUzun yıllar evsel ve endüstriyel atıkların döküldüğü bir yer olan Porsuk Çayı, Belediye Başkanı Yılmaz Büyükerşen döneminde temizlenmeye başlamış ve uzun yıllarca süren çalışmalar sonucu 2000'li yıllarda temiz bir hale getirilirerek şehre kazandırılmıştır.",
              fotograf: 'porsuk çayı'),
          Places(
              adi: 'Sazova Parkı',
              aciklama: "Eskişehir Bilim Sanat ve Kültür Parkı, Eskişehir'in Sazova Mahallesi'nde 400 bin metrekare üzerine kurulu park.\n\nİlk kez Ekim 2008'de Ramazan Bayramı süresince tamamlanmadan ziyarete açılmıştır. Parkta Nuh’un Gemisi’nin yanı sıra 25 bin metrekarelik bir gölet, park çevresinde dolaşan buharlı mini tren, çocuk oyun alanları, hayvanat bahçesi, bilim ve deney müzesi, konser alanları, amfi tiyatro bulunmaktadır.\n\nEskişehir şehir merkezine araba ile ortalama 15 dakika uzaklıktadır. Daha çok çocuklar için tercih edilen parkın tam adı Eskişehir Sazova Bilim Sanat ve Kültür Parkı4 Eylül 2016 tarihinde Wayback Machine sitesinde arşivlendi.'dır. Hayvanat Bahçesinden akvaryuma, masal şatosundan korsan gemisine kadar birçok turistik aktiviteyi bu park içerisinde bulabilirsiniz.",
              fotograf: 'Sazova parkı'),
        ],
        yemekler: [
          Foods(ad: 'Balaban Köfte', aciklama: 'balaban köfte açıklaması', fotograf: 'balabankofte'),
          Foods(ad: 'Çibörek', aciklama: 'çibörek açıklaması', fotograf: 'ciborek'),
          Foods(ad: 'Yufkalı Büryan', aciklama: 'yufkalı büryan açıklaması', fotograf: 'yufkaliburyan'),
        ]),
    Sehir(
        id: 6,
        adi: 'Edirne',
        aciklama:
            "Edirne tarihi bir kent olup tarih boyunca da önem ve değerini korumuştur. Edirne’nin ilkçağlarda Orta Asya’dan göç edip buraya yerleşen Traklar tarafından kurulduğu bilinmektedir. Sonradan Büyük İskender buraları Makedonya İmparatorluğu’nun uçsuz bucaksız sınırları içine katmıştır. Daha sonra Romalılar’ın hakim olduğu bu topraklar 395 yılında Roma İmparatorluğu’nun ikiye ayrılmasıyla Doğu Bizans’ın payına düşmüştür. \n\n"
            "22 Ağustos 1829 yılında Rusların şehre girip birkaç ay kalmaları Edirne’nin uğradığı ilk işgal felaketi olmuştur. Edirne, 20 Ocak 1887’de tekrar Rusların 13 ay, 26 Mart 1913’te Bulgarların dört ay, 1920’li yıllarda Yunanlıların iki yıllık işgallerine de sahne olmuştur. Bugün yurdumuzun karayoluyla Avrupa’ya açılan sınır kapılarına sahip Edirne şehri, 25 Kasım 1922 yılında düşman işgalinden kurtarılmıştır.\n\n"
            "Edirne’de koyu bir kara iklimi hüküm sürmektedir. Kış ayları çok soğuk ve uzun, yaz ayları ise sıcak geçmektedir. Yağmur en fazla ilkbaharda yağmaktadır. Yıllık yağış ortalaması 452, 95 kg/m2’dir. Sıcaklığın en çok olduğu aylar Temmuz ve Ağustos’tur. En soğuk aylar ise Ocak ve Şubat’tır.\n\n"
            "Edirne, Anadolu’yu Avrupa’ya birleştiren bir konumda olması nedeniyle zengin bir kültüre de sahiptir. İl genelinde Osmanlı Türk kültürünü yansıtan 612 tarihi eser vardır. Bu eserlerden bir bölümü (ki bunlar Selimiye Camii, Üç Şerefeli Cami, Kervansaray, Meriç Köprüsü, Eski Cami v.b.) sağlamlılığını korumakta olup halen kullanılmaktadır. Bunlara benzer bir bölüm tarihi yapı da restore edilmektedir.  Ayrıca il genelinde 29 adet SİT alanı mevcuttur.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Erikli Plajı',
              aciklama: "Erikli denizin suyu gayet sıcaktır. Yani ege denizi gibi yazın sadece ağustos ayında sıcak olmaz. Gayet yüzmeye uygun sıcaklıkta bir denizi bulunmaktadır. Haziran aylarında 23 derece Temmuz ayında 24 Ağustos ayında 25 dereceleri bulabilmektedir. Erikli denizi dalgalı bir deniz değildir. Çocuklarınızla güvenle denize girebilir yüzme çok bilmeseniz bile rahatlıkla denizin keyfini çıkarabilirsiniz.Erikli denizinin tuz oranı ise son derece idealdir. Akdeniz bölgesindeki gibi göz yakmaz ve üzerinizde parlak parlak tuz kalmaz.",
              fotograf: 'erikli plajı'),
          Places(
              adi: 'Hıdırlık Tabyası',
              aciklama: "Edirne’de ilk istihkâm (savunma amacıyla arazi üzerinde yapılan her türlü yapı) inşaatlarına, 1829 yılındaki Rus işgali karşısında Divan-ı Hümayun tercümanı Hoca İshak Efendi’nin nezareti altında başlanmıştır. İnşa edilen bu yapılardan en önemlilerinden birisi I. Balkan Savaşı’nda da kullanılan Hıdırlık Tabyası’dır.\n\nHıdırlık Tabyası, yaklaşık 1800 metreyi bulan çevresi ile Edirne’deki en büyük tabyadır. Tabya: Nizamiye Ana Giriş Binası, Koğuş Binası, Topçu Odaları, Topçu Bataryaları (Top Mevzisi), Hendek ve Avlu’dan oluşmaktadır.",
              fotograf: 'hıdırlık tabyası'),
          Places(
              adi: 'Karaağaç Tren Garı',
              aciklama: "Karaağaç Tren İstasyonu, Edirne'nin Karaağaç kasabasında bulunan ve II. Abdülhamid devrinde yaptırılan tren istasyon binasıdır. Edirne Tren Garı olarak inşa edilmiş olan bina günümüzde Trakya Üniversitesi Rektörlük Binası olarak kullanılır.\n\nİstanbul'daki Sirkeci Garı örnek olarak yapılmış gar binalarından birisidir. Şark Demiryolları Şirketi adına Mimar Kemaleddin tarafından neoklasik üslupta inşa edildi. Üç katlı, dikdörtgen planlı ve 80 m uzunluğunda bir yapıdır. İstanbul'u Avrupa'ya bağlayan demiryolunun en önemli istasyonlarından birisiydi\n\nİnşaatı 1914 yılında genel olarak bitirilmişti ancak o yıl başlayan I. Dünya Savaşı nedeniyle demiryolu güzergâhı değiştiği için hizmete giremedi. Savaş sonunda Osmanlı Devleti sınırları dışında kaldı.\n\n24 Temmuz 1923 tarihinde imzalanan Lozan Antlaşması'nda Karaağaç, Bosnaköy ile birlikte Yunanistan'ın Batı Anadolu'da yaptığı tahribata karşılık, savaş tazminatı olarak Türkiye'ye verildi. Böylece yeniden Türk sınırlarına giren Karaağaç İstasyonu, 14 Eylül 1923 günü Yunanlardan teslim alındı ve 1930'da işletmeye açıldı.",
              fotograf: 'karaağaç tren garı'),
        ],
        yemekler: [
          Foods(ad: 'Ciğer Sarma', aciklama: 'ciğer sarma açıklaması', fotograf: 'cigersarma'),
          Foods(ad: 'Tava Ciğer', aciklama: 'tava ciğer açıklaması', fotograf: 'tavacigeri'),
          Foods(ad: 'Zirva', aciklama: 'yufkalı büryan açıklaması', fotograf: 'zirva'),
        ]),
    Sehir(
        id: 7,
        adi: 'Antalya',
        aciklama:
            "Antalya, Türkiye'nin bir ili ve en kalabalık beşinci şehridir. 2020 sonu itibarıyla il nüfusu 2.548.308'dır. Türkiye'de turizmin başkenti olarak görülmektedir. Şehrin yüz ölçümü 20.177 km2dir. İlde km2ye 115 kişi düşmektedir. En kalabalık ilçesi 2019 yılı itibarıyla 556.033 kişiyle Kepez ilçesidir. Nüfus yoğunluğunun en fazla olduğu ilçe ise km2 başına 5067 kişi ile Muratpaşa'dır. 19 ilçe ve belediye, bu belediyelerde toplam 910 mahalle bulunmaktadır.\n\n"
            "Tamamı Akdeniz Bölgesi'nin batısında yer alır ve Antalya Körfezi'yle Batı Torosların arasında kurulmuştur. Yüz ölçümü bakımından Türkiye'nin beşinci büyük ilidir. Güneyinde Akdeniz, batısında Muğla, kuzeyinde Burdur ve Isparta, kuzeydoğusunda Konya, doğusunda ise Karaman ve Mersin illeri vardır.\n\n"
            "Antalya şehri, 1980 yılından sonra uygun iklim koşulları ve turizm etkinlikleri nedeniyle hızla gelişmiş ve buna paralel olarak il de günümüzde Türkiye'nin en kalabalık beşinci ili olmuştur. Antalya'da ekonomik hayat büyük oranda ticaret, tarım ve turizme dayalıdır.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Kaleiçi',
              aciklama: "Kaleiçi, Antalya'nın Muratpaşa ilçesi sınırları içerisinde yer alan deniz ve kara surları tarafından kuşatılan kent merkezi'ne verilen isim'dir. Kaleiçi'nin sokakları ve yapıları Antalya tarihinin izlerini günümüze kadar getirmektedir. Eski evlerin önemi sadece mimari açıdan değil, aynı zamanda insanların yaşam şekli, davranışları, gelenekleri ve sosyal yönleri konusunda da çok yararlı bilgiler aktarmaktadır.\n\n1972 yılında Antalya iç limanı ve Kaleiçi semti, özgün dokusu nedeniyle 'Gayrimenkul Eski Eserler ve Anıtlar Yüksek Kurulu' tarafından 'SİT bölgesi' olarak koruma altına alınmıştır. Turizm Bakanlığı'na 'Antalya- Kaleiçi Kompleksi' restorasyon çalışmasından dolayı, 28 Nisan 1984’de FİJET (Uluslararası Turizm Yazarları Birliği) tarafından Altın Elma Turizm Oskarı ödülü verilmiştir. Günümüzde Kaleiçi otelleri, pansiyonları, restoranları ve barları ile eğlence merkezi haline gelmiştir.",
              fotograf: 'kaleiçi'),
          Places(
              adi: 'Theimussa',
              aciklama: "Theimussa, Kale iskelesi, Antalya ili Demre İlçesi Üçağız Köyü yakınlarında bulunan antik Likya kenti.\n\nŞehrin tarihi hakkında pek bilgi yoktur, ancak bir kitabeden tarihinin M.Ö. IV. yüzyıla kadar indiği anlaşılmaktadır. Burada daha çok mezar kalıntıları görülürse de köyün kıyısında söveleri hâlâ yerinde durmakta ve bir kapı ile alçak bir kayalık üzerinde kule kalıntısı da görülebilir.",
              fotograf: 'theimussa'),
          Places(
              adi: 'Düden Şelalesi',
              aciklama: "Kepez İlçe sınırları içerisinde, Varsak Mahallesi’nde bulunmaktadır. Düden Şelalesi çeşitli kaynaklarda, İskender Şelalesi ve Yukarı Düden Şelalesi olarak da geçmektedir. Aynı zamanda halk arasında Düdenbaşı Şelalesi diyenler de vardır. Eski Antalya-Burdur yolunun 28'inci kilometresinde Kırkgözler’in 30'ncu kilometresinde Pınarbaşı adında iki büyük karstik kaynak çıkmaktadır. Suyu bol bu iki nehir kısa bir akıştan sonra birleşerek Bıyıklı Düdeni içinde kaybolur. Bıyıklı Düdeni’nde kaybolan su 14 kilometre kadar yerin altında gittikten sonra Varsak Çöküntüsü'nün bir ucundan çıkar, çok kısa bir akıştan sonra çöküntünün öbür ucundan tekrar batar. Varsak’ta kaybolan su iki kilometre kadar yeraltı akışından sonra Düdenbaşı’nda yeryüzüne çıkar.",
              fotograf: 'düden şelalesi'),
        ],
        yemekler: [
          Foods(ad: 'Girit Kebabı', aciklama: 'girit kebabı açıklaması', fotograf: 'giritkebabi'),
          Foods(ad: 'Hülüklü Çorba', aciklama: 'hülüklü çorba açıklaması', fotograf: 'huluklucorba'),
          Foods(ad: 'Laba Dolması', aciklama: 'laba dolması açıklaması', fotograf: 'labadolmasi'),
        ]),
    Sehir(
        id: 8,
        adi: 'Ankara',
        aciklama:
            "Ankara, Türkiye'nin başkenti ve en kalabalık ikinci ilidir. Nüfusu 2020 itibarıyla 5.663.322 kişidir. Bu nüfus; 25 ilçe ve bu ilçelere bağlı 1425 mahallede yaşamaktadır. İl genelinde nüfus yoğunluğu 215'tir. Coğrafi olarak Türkiye'nin merkezine yakın bir konumda bulunur ve Batı Karadeniz Bölgesi'nde kalan kuzey kesimleri hariç, büyük bölümü İç Anadolu Bölgesi'nde yer alır. Yüz ölçümü olarak ülkenin üçüncü büyük ilidir. Bolu, Çankırı, Kırıkkale, Kırşehir, Aksaray, Konya ve Eskişehir illeri ile çevrilidir.\n\n"
            "Bilinen tarihi en az 10 bin yıl öncesine, Eski Taş Çağı'na ulaşan Ankara, tarih öncesinden günümüze dek pek çok medeniyeti barındırmıştır. Hititler, Frigyalılar, Lidyalılar, Persler, Galatlar, Romalılar, Bizanslılar, Selçuklular, Osmanlılar ve nihayet Türkiye Cumhuriyeti, il topraklarını kontrolleri altında tutmuştur. Tektosagların ve Türkiye Cumhuriyeti'nin başkenti olan Ankara şehri ve Frigyalıların başkenti Gordion, il sınırları içinde yer alır. Yıldırım Bayezid'in Timurlenk'e yenik düştüğü Ankara Muharebesi Çubuk yakınlarında ve Türk Kurtuluş Savaşı'nın dönüm noktası olan Sakarya Muharebesi Polatlı yakınlarında yapılmıştır.\n\n"
            "Ankara kara iklimine sahiptir. Şehirler dışındaki il topraklarının büyük kısmı tahıl tarlalarıyla kaplı platolardan oluşur. İlin çeşitli yerlerindeki doğal güzellikler korumaya alınmış, dinlenme ve eğlence amaçlı kullanıma sunulmuştur. İlin adını taşıyan tavşanı, keçisi, atı ve kedisi dünya çapında bilinir, armudu, çiğdemi, yerel yemeklerden Ankara tavası ve Kızılcahamam ve Beypazarı'nın maden suyu ise ülke çapında tanınır.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Anıtkabir',
              aciklama: "Anıtkabir, Türkiye'nin başkenti Ankara'nın Çankaya ilçesinde yer alan Mustafa Kemal Atatürk'ün anıt mezarını içeren komplekstir. Emin Onat ile Orhan Arda'nın tasarımı olan yapı kompleksinin 1944'te başlanan inşası 1953'te tamamlanmıştır. Kompleks, anıt mezar binası başta olmak üzere çeşitli yapı ve anıtların yanı sıra Barış Parkı olarak adlandırılan ağaçlık alandan oluşmaktadır.",
              fotograf: 'anıtkabir'),
          Places(
              adi: 'Ankara Kalesi',
              aciklama: "Kale tarih içinde çeşitli dönemler yaşamıştır. MÖ 2. yüzyıl başında Romalıların Galatya'yı işgalinden sonra kent büyüyerek kale dışına taştı. Roma İmparatoru Caracalla MÖ 217'de kalenin surlarını onarttı. MÖ 222 - 260 arasında İmparator Alexander Severus, Perslere yenilince kale kısmen tahrip edildi. 7. yüzyılın 2. yarısından sonra Romalılar kaleyi onarmaya başladı. Bizans döneminde İmparator II. Justinianos MS 668'de dış kaleyi yaptırmıştır, İmparator III. Leon 740'ta kale duvarlarını onarırken iç kale surlarını yükseltmiştir. Bunun ardından İmparator I. Nikiforos 805'te, İmparator I. Basileios 869'da bu kaleyi onarmıştır. Kale 1073 yılında Selçukluların eline geçmiştir. 1101 yılında Haçlılarca ele geçirilen kale 1227 yılında tekrar Selçukluların hakimiyetine girmiştir. I. Alâeddin Keykubad kaleyi yeniden onartmış, 1249'da ise II. İzzeddin Keykavus kaleye yeni ilaveler yapmıştır. Osmanlı döneminde 1832'de Kavalalı İbrahim Paşa tarafından onarımdan geçirilmiş, kalenin dış duvarları genişletilmiştir.",
              fotograf: 'ankara kalesi'),
          Places(
              adi: 'Hamamönü',
              aciklama: "Hamamönü, Ankara ilinin Altındağ ilçesinde bulunan tarihi bir bölgedir. Hacettepe Mahallesi sınırlarında kalır. Bölgede bulunan 19. yüzyıl sivil mimarlık örneği tarihi binalar restore edilerek bölge yeniden canlandırılmıştır. Hamamönü, adını bir Türk boyu olan Oğuzların Bayındır boyu beylerinden Karacabey’in yaptırdığı Çifte Hamamdan almıştır. Tarihi Karacabey Hamamı burada bulunmaktadır. İstiklal Marşı’nın yazıldığı Mehmet Akif Ersoy Parkı ve parkın içerisinde Mehmet Akif Ersoy Müze Evi yer almaktadır. Hamamönü'de yer alan camiler; Taceddin Sultan Camii, Hacı İlyas Camii, Hacı Musa Camii, Sarıkadı Camii, Mehmet Çelebi Camiidir. Hamamönünde yer alan konaklar; Kamil Paşa Konağı, Beynamlızade Konağı, Kabakçı Konağıdır. Son dönem Osmanlı zamanından kalma evler tamamen Türk motifleri ile bezenmiş olup, sokakları gezildiğinde 19. yüzyıldaymış gibi hissettirir.",
              fotograf: 'hamamönü'),
        ],
      yemekler: [
        Foods(ad: 'Ankara Tava', aciklama: 'Ankara Tava açıklaması', fotograf: 'ankaratava'),
        Foods(ad: 'Beypazarı Güveci', aciklama: 'Beypazarı Güveci açıklaması', fotograf: 'beypazariguveci'),
        Foods(ad: 'Efelek Sarması', aciklama: 'Ankara Tava açıklaması', fotograf: 'efeleksarmasi'),
      ]
    ),
    Sehir(
        id: 9,
        adi: 'Aydın',
        aciklama:
           "Aydın, Türkiye'nin bir ili ve en kalabalık yirminci şehridir. Ege Bölgesi'nde yer alan, turizm ve tarım açısından en gelişmiş illerdendir. Kuzeyinde İzmir, kuzeydoğusunda Manisa, doğusunda Denizli, güneyinde Muğla illeri, batısında Ege Denizi bulunmaktadır. 2019 itibarıyla 1.110.972 kişilik nüfusuyla Ege Bölgesi'nin üçüncü büyük ilidir. On yedi ilçesi vardır.\n\n"
            "Aydın; çeşitli uygarlıklara ev sahipliği yapmış, Antik Çağda Afrodisias, Milet, Didyma, Nysa, Priene, Magnesia gibi önde gelen kentlerdir. Bugünkü Aydın, Tralleis Kenti ile birlikte MÖ 2500 yılında Hititler zamanında gelişmiş, 8. yüzyılda Lydia zamanında da en parlak çağını yaşamıştır. Selçuklularla birlikte Türk uygarlığının kültür varlığı ve eserleriyle donatılmıştır.\n\n"
            "Yazları sıcak ve kurak, kışları ılık ve yağışlı geçen Akdeniz iklimi (Köppen: Csa) etkilidir. Bu iklim şartları ve topoğrafik yapı Aydın ve çevresinde iki ayrı bitki topluluğunun (maki ve orman) gelişmesine neden olmuştur. Kar yağışı ender görünür.",
        ulke: "Türkiye",
        type: 1,
        yerler: [
          Places(
              adi: 'Nysa Antik Kenti',
              aciklama: "Nysa Antik Kenti Aydın İline 30 km uzaklıkta olan Sultanhisar ilçesinin kuzeyinde, Aydın Dağlarının güneye bakan yamacında, Tepecik deresinin çevresinde bulunur. Nysa Antik Kenti Tepecik deresinin oluşturduğu derin bir boğazın iki yakasına kurulmuş iki şehirden meydana gelir. İki şehir birbirine üç köprü ile bağlanır. Antik kentin altın çağlarını yaşadığı dönemde yaklaşık 40 bin kişinin şehirde yaşadığı düşünülmektedir. Nysa Antik Kentinin kuruluşunun MÖ 6. Yüzyılda dayandığı ifade edilmektedir.",
              fotograf: 'nysa antik kenti'),
          Places(
              adi: 'Tralleis',
              aciklama: "Menderes havzasının verimli toprakları üzerine kurulmuş olan bu kent İskender tarafından alınmasından sonra Hellenistik krallıklar arasında sık sık el değiştirmiştir. Kentin ismi antik kaynaklarda çoğunlukla Tralleis, ender olarak da Trallis şeklinde geçer. Atinalı tarihçi Ksenofon, Anabasis ve Hellenika adlı eserlerinde kentten Tralli şeklinde bahsetmektedir. Diğer antik kentlerde olduğu gibi Tralleis bir kavim olan Traller ve Argonlular tarafından Dor göçleri sonrasında kurulmuş ve ismini de buradan almıştır. Ancak kentin adını Tralla veya Thiba adında bir Amazon'dan aldığı düşüncesi de bulunmaktadır. Antik Dönemin önemli yazarlarından Yaşlı Plinius'a göre kent sakinlerinin su ihtiyacı Tralleis'in içinden geçen Thebaid adı verilen su kaynağının birleştiği Eudon (Tabakhane) Nehri'nden karşılanmaktadır.Tralleis’te bu gün ayakta kalan tek yapı “Üç Gözler” olarak adlandırılan 2. asırda yapılmış olan, antik çağın eğitim, spor ve kültür açısından önde gelen yapılarından olan gymnasiuma ait kalıntıdır.",
              fotograf: 'tralleis'),
          Places(
              adi: 'Priene',
              aciklama: "Priene, Aydın Söke'de Selçuk-Efese yaklaşık 100 km uzaklıkta kurulmuş bir İyon (Antik Yunan) şehridir. Şehir Menderes nehrinin 10 km kuzeyindedir. Şehir kurulduğunda deniz kıyısındaydı. Menderesin alüvyonu nedeniyle şehir şimdi kilometrelerce kara içerisindedir.\n\nBelus'un oğlu Aegyptus yönetiminde İyonlar tarafından kurulduğu kabul edilir. Şehir sonra Lidyalı Ardys tarafından alınır. MÖ 6. yüzyılın ortalarında şehrin Bilgesi Bias yönetiminde, şehir tekrar canlandı ve zenginleşti. MÖ 545 yılında Pers Kralı Cyrus (Kurash) tarafından ele geçirildi. Şehir Perslere karşı İyon Başkaldırısı na (MÖ 499) 12 gemi ile katildi. Komşusu Samos (Sisam) ile ortaya çıkan anlaşmazlıklar ve Büyük İskender in ölümünün ardından çıkan karışıklar dolayısıyla şehir güçsüzleşti. Roma 155 yılında şehri, Bergama (Pergamon) ve Kapadokya krallarının elinden kurtarmak durumunda kaldı.\n\nKapadokya kralının asi oğlu Orophernes, Romalıların şehri alması ile Priene’ye gömdüğü hazinesine ulaştı ve adak olarak şehirdeki Athena tapınağını onardı. Roma ve Bizans yönetimi altında zengin bir şehir olarak kaldı. MS 13. yüzyılda şehir Türklerin eline geçti.",
              fotograf: 'priene'),
        ],
        yemekler: [
          Foods(ad: 'Çine Köftesi', aciklama: 'çine köftesi açıklaması', fotograf: 'cinekoftesi'),
          Foods(ad: 'Keşkek', aciklama: 'tava ciğer açıklaması', fotograf: 'keskek'),
          Foods(ad: 'Paşa Böreği', aciklama: 'yufkalı büryan açıklaması', fotograf: 'pasaboregi'),
        ]),
  ];

  List<Sehir> yurtdisi = [
    Sehir(
        id: 10,
        adi: 'Toronto',
        aciklama:
           "Toronto, Kanada'nın en büyük şehri ve ticaret merkezi, Ontario eyâletinin başkentidir.\n\n"
            "Nüfusu yaklaşık 6 milyondur ve genelde İngilizce konuşulur. Nüfusunun %54'ünü göçmenler oluşturur; Chinatown, Greektown, Koreantown, Little Italy, Little Portugal gibi azınlık mahalleleri vardır.\n\n"
        "Gelişmiş bir ulaşım ağına sahiptir; yeraltında alışveriş merkezleri ve metro istasyonları vardır. Son derece güvenli bir yerdir, suç oranları çok düşüktür. Niagara şelaleleri'ne, Ottawa, Montreal, ABD'ye oldukça yakındır.\n\n"
        "En önemli simgesi \"CN Tower\"'dır. \"Rogers Centre\" (eski adıyla \"Skydome\") şehrin merkezindedir. Güneyinde Ontario Gölü vardır. Dünyanın en büyük hayvanat bahçelerinden biri olan \"Toronto Zoo\" doğusundadır.\n\n"
        "Şehrin futbol ve basketbol takımları ABD'de görev yapar.Basketbol takımı NBA'de, futbol takımı ise NFL'de oynar. Aynı zamanda ülkenin de tek beyzbol takımı olan bluejays de oyunlarını burada oynamaktadır.\n\n"
          "Şehirde gelişmiş bir kütüphane sistemi vardır. Her mahallede kütüphane bulunmaktadır ve özellikle soğuk havalarda insanlar vaktinin çoğunu kütüphanelerde gecirmektedir.",
        ulke: "Kanada",
        type: 2,
        yerler: [
          Places(
              adi: 'China Town',
              aciklama: "Çin mahallesi, Chinatown olarak da bilinir, Çin dışındaki şehirlerde bulunan Çin mahallelerine verilen isimdir. Kelime anlamı olarak Çin kasabası, anlamına gelir. Özellikle yoğun göç alan New York ve San Francisco gibi şehirlerde büyük Çin mahalleleri bulunur. Genellikle Çin'den yeni gelen göçmenler buralara yerleşirler.",
              fotograf: 'china town'),
          Places(
              adi: 'CN Tower',
              aciklama: "CN Tower, 553 metre uzunlukta dünyanın ikinci en yüksek kulesidir.\n\nKanada'da yer alan bina Ontario'daki Toronto şehrinde bulunmaktadır ve şehrin simgesi konumundadır. Kanada Ulusal Demiryolu Şirketi tarafından yaptırılmıştır. Kule içerisinde 50'den fazla restoran bulunmaktadır. Ayrıca kule tepesinin zemininin bazı kısımları camla kaplıdır. Buradan ziyaretçiler aşağıya bakabilirler. Yılda 2 milyon ziyaretçisi vardır.",
              fotograf: 'cn tower'),
          Places(
              adi: 'Royal Ontario Müzesi',
              aciklama: "Royal Ontario Müzesi (ROM, Fransızca: Musée royal de l'Ontario) Toronto, Ontario, Kanada'da yer alan bir sanat, dünya kültürü ve doğa tarihi müzesidir. Kuzey Amerika'nın en büyük müzelerinden biridir ve Kanada'nın en büyük müzesidir. Her yıl bir milyondan fazla ziyaretçi çekmekte ve bu da ROM'u Kanada'daki en çok ziyaret edilen müze yapmaktadır. Müze, Toronto Üniversitesi bölgesinde Queen's Park'ın kuzeyinde yer almaktadır ve müzenin ana girişi Bloor Street West üzerinde yer alır. Toronto Transit Komisyonu'nun müze istasyonu, ROM'dan sonra ismini almıştır ve 2008'den beri kurumun koleksiyonuna benzeyecek şekilde dekore edilmiştir.\n\n16 Nisan 1912'de kurulan ve 19 Mart 1914'te açılan müze, tarih boyunca Toronto Üniversitesi ile yakın ilişkilerini sürdürmüş, uzmanlık ve kaynaklarını paylaşmıştır. Müze, Ontario Hükûmetinin bağımsız bir Crown ajansı olduğu 1968 yılına kadar Toronto Üniversitesi'nin doğrudan kontrolü ve yönetimi altındaydı. Bugün, müze, dünyanın en geniş araştırma alanı olan araştırma ve koruma faaliyetleri ile Kanada'nın en büyük saha araştırma kurumudur.",
              fotograf: 'royal ontario müzesi'),
        ],
        yemekler: [
          Foods(ad: 'Ciğer Sarma', aciklama: 'ciğer sarma açıklaması', fotograf: 'cigersarma'),
          Foods(ad: 'Tava Ciğer', aciklama: 'tava ciğer açıklaması', fotograf: 'tavacigeri'),
          Foods(ad: 'Zirva', aciklama: 'yufkalı büryan açıklaması', fotograf: 'zirva'),
        ]),
    Sehir(
        id: 12,
        adi: 'Cambridge',
        aciklama:
            "Cambridge, Birleşik Krallık'a bağlı İngiltere ülkesinde bir şehirdir. Özellikle dünyanın en iyi beş üniversitesinden biri olan Cambridge Üniversitesi ile bilinir. Cambridge şehri, Birleşik Krallık'ta Cambridgeshire vilayetinin idari merkezidir.\n\n"
            "Londra'nın kuzeyinde olup yaklaşık 65 mil (105 km) uzaklıktadır. Çok sayıda küçük kasaba ve köylerle çevrilir. Ayrıca, Silicon Fen olarak bilinen yüksek teknoloji bölgesinin kalbidir.\n\n"
            "Cambridge, en çok Cambridge Üniversitesi ile bilinir. Üniversite ünlü Cavendish Laboratuvarı, King's College Şapeli ve Cambridge Üniversitesi Kütüphanesi'ni içerir. Cambridge silüeti son iki şey ile tamamlanır: şehrin güney ucundaki Addenbrooke Hastanesi'nin bacası ve merkezdeki St John's Koleji Şapel Kulesi.\n\n"
            "2001 yılı Birleşik Krallık nüfus sayımına göre şehrin nüfusu 22.153 öğrenci ile birlikte 108.863 kişi idi. Ama şehirsel alan güney Cambridgeshire bölgesinin bir kısmını içine alır ve şehirsel alan nüfusu yaklaşık 130.000'e ulaşır.",
        ulke: "İngiltere",
        type: 2,
        yerler: [
          Places(
              adi: 'The Backs',
              aciklama: "The Backs, İngiltere'nin Cambridge kentindeki Queen's Road'un doğusunda pitoresk bir alandır, burada Cambridge Üniversitesi'nin çeşitli kolejleri, gerekçesiyle nehrin her iki kıyısını da kapsayan Cam Nehri'ne geri döner.",
              fotograf: 'the backs'),
          Places(
              adi: 'King\'s College',
              aciklama: "King's College London (KCL), Londra Üniversitesi'ni oluşturan ilk kolejlerdendir. İngiltere'nin en eski ve prestijli okullarındandır.\n\n2010-2011 eğitim dönemi itibarıyla 13.800 lisans, 5.300 yüksek lisans öğrencisi vardır.\n\nBirçok öğretim üyesi Nobel Ödülü ile ödüllendirilmiştir. Hâlen İngiltere'nin araştırmaya en çok fon ayıran üniversitelerindendir.\n\nKral IV. George ve Wellington Dükü (daha sonra başbakan) tarafından 1829'da kurulmuştur.\n\nTıp, diş hekimliği, hukuk, siyaset bilimi ve uluslararası ilişkiler, uluslararası güvenlik, müzik ve felsefe alanlarında İngiltere'nin ve dünyanın en önemli bölümlerine sahiptir.",
              fotograf: 'kings college'),
          Places(
              adi: 'Cambridge Science Centre',
              aciklama: "Başlangıçta İngiltere'nin Cambridge kentindeki Jesus Lane'de bulunan Cambridge Bilim Merkezi, kentin ilk interaktif bilim müzesidir. Başlangıç ​​sergi alanı, Cambridge Üniversitesi Rektör Yardımcısı Leszek Borysiewicz tarafından 7 Şubat 2013 tarihinde açıldı, müze 8 Şubat 2013'te halka açıldı.",
              fotograf: 'Cambridge Science Centre'),
        ]),
    Sehir(
        id: 13,
        adi: 'Londra',
        aciklama:
            "Londra,  İngiltere'nin ve Birleşik Krallık'ın başkenti ve en kalabalık şehridir. Büyük Britanya adasının güneydoğusundaki Thames Nehri üzerinde duran Londra, iki bin yıldır büyük bir yerleşim yeri olmuştur. Londra, Londra Belediye Başkanı ve Londra Meclisi tarafından yönetilmektedir.\n\n"
            "Londra, sanat, ticaret, eğitim, eğlence, moda, finans, sağlık, medya, profesyonel hizmetler, araştırma ve geliştirme, turizm ve ulaşım alanlarında dünyanın önde gelen şehirlerinden biridir. Dünyanın en büyük finans merkezlerinden biridir ve dünyanın beşinci büyükşehir bölgesi GSYİH'sine sahiptir. Londra genellikle bir dünya kültür başkenti olarak kabul edilir.\n\n"
            "Uluslararası gelişlerle ölçülen dünyanın en çok ziyaret edilen şehri ve yolcu trafiği ile ölçülen dünyanın en büyük şehir havaalanı sistemine sahip. Dünyanın önde gelen yatırım hedefleri arasında yer alıyor ve daha fazla uluslararası perakendeciye ve ultra yüksek net değerli bireylere ev sahipliği yapıyor. Londra'daki üniversiteler, Avrupa'nın en büyük yükseköğretim enstitülerinden oluşuyor.\n\n"
            "ondra'da çok çeşitli insan ve kültür var ve bölgede 300'den fazla dil konuşuluyor. 2016 yılı ortası belediye nüfusu, Avrupa Birliği'ndeki en büyük şehir olan ve Birleşik Krallık nüfusunun %13.4'ünü oluşturan 9 milyondur. Londra'nın kentsel alanı, 2011'de yapılan sayımda 10 milyon kişi ile Paris'ten sonra AB'nin ikinci en kalabalık şehridir. Londra, 1731'den 1925'e kadar dünyanın en kalabalık şehriydi.",
        ulke: "Birleşik Krallık",
        type: 2,
        yerler: [
          Places(
              adi: 'Big Ben',
              aciklama: "Big Ben (resmi adıyla Elizabeth Kulesi), Londra'da Westminster Sarayı'nın yanındaki ünlü saat kulesi. Dünyanın en büyük ikinci dört yüzlü saatidir. 'Big Ben' aslında saat kulesinin çanının adıdır, ancak zamanla halk tarafından tüm yapıyı belirtmek için kullanılır olmuştur. 26 Haziran 2012 tarihinde kulenin ismi kraliçenin tahta çıkışının 60. yılı onuruna parlamentonun aldığı kararla 'Elizabeth Kulesi' olarak değiştirilmiştir.\n\nKule, Augustus Pugin tarafından neo-Gotik tarzda tasarlanmıştır. 1859'da tamamlandığında, saati dünyadaki en büyük saatiydi. Kule 316 fit (96 m) yüksekliğindedir ve zemin seviyesinden çan kulesine tırmanma 334 adımdır. Tabanı kare şeklindedir ve her iki tarafta 40 fit (12 m) boyutundadır. Saatin kadranları 22,5 fit (6,9 m) çapındadır. İngiltere'nin dört ülkesi de kulede İngiltere için bir gül, İskoçya için devedikeni, Kuzey İrlanda için yonca ve Galler için pırasa içeren kalkanlarda temsil ediliyor. 31 Mayıs 2009'da kulenin 150. yıl dönümü kutlamaları düzenlendi.",
              fotograf: 'big ben'),
          Places(
              adi: 'Buckingham Sarayı',
              aciklama: "Buckingham Sarayı (İngilizce: Buckingham Palace, İngilizce telaffuz: [ukˈbʌkɪŋəm] İngilizce telaffuz: [ˈpælɪs]), Birleşik Krallık hükümdarlarının yönetim merkezi ve Londra'daki ikametgahı. Westminster Şehri'nde bulunan saray sık sık devlet işlerinde ve yabancı devlet insanlarının ağırlanmasında kullanılır.\n\n150 yıl kadar özel mülk olan sarayın arazisinde 1703'te Buckingham Evi olarak adlandırılan Westminster Dükü'nün konağı bulunmaktaydı. 1763'te III. George tarafından Kraliçe Charlotte için alınan bina daha sonra 'Kraliçenin Evi' olarak adlandırılmaya başlandı. 19. yüzyıl boyunca John Nash ve Edward Blore gibi mimarlarca genişletilen binaya eklemeler yapıldı. Saray 1837'de Kraliçe Victoria'nın tahta çıkmasının ardından Londra'daki ikametgahı oldu.\n\nSaraya 19. yüzyıl sonu ve 20. yüzyıl başında yapılan son eklemelerde doğu cephesine kraliyet ailesinin halkı selamladığı balkon yapılmıştır. II. Dünya Savaşı'ndaki Alman bombardımanında yıkılan şapelin yerine Kraliyet Koleksiyonu'nun sergilendiği Kraliçe'nin Galerisi yapılmış ve 1962'de halka açılmıştır.",
              fotograf: 'buckingham sarayı'),
          Places(
              adi: 'Westminster Sarayı',
              aciklama: "Westminster Sarayı ya da Parlamento Binası (İngilizce: Palace of Westminster, Houses of Parliament) (Vestminster okunur), Birleşik Krallık'ta, Avam Kamarası ve Lordlar Kamarası'ndan oluşan İngiliz Parlamentosu'na ev sahipliği yapan yapıdır.\n\nSaray, Westminster semtinde Thames Nehri'nin kuzey yakasında, Whitehall'da bulunan diğer kamu binalarının yakınında yer alır.\n\nSarayın mimarî yapısı ve düzenlemesi oldukça karmaşıktır. Yaklaşık 1.100 odası, 100 merdiven çıkışı ve toplamda 4,8 kilometreyi bulan uzun koridorları vardır. Yapının büyük bölümüm 19. yüzyılda yapılmış olmasına karşın, bugün katafalk törenleri gibi bazı etkinliklerin düzenlendiği Westminster Hall ve Jewel Kulesi'si gibi tarihi bölümlerde hala ayaktadır.",
              fotograf: 'westminster sarayı'),
        ],
        yemekler: [
          Foods(ad: 'Ciğer Sarma', aciklama: 'ciğer sarma açıklaması', fotograf: 'cigersarma'),
          Foods(ad: 'Tava Ciğer', aciklama: 'tava ciğer açıklaması', fotograf: 'tavacigeri'),
          Foods(ad: 'Zirva', aciklama: 'yufkalı büryan açıklaması', fotograf: 'zirva'),
        ]),
    Sehir(
        id: 14,
        adi: 'Los Angeles',
        aciklama:
           "Amerika Birleşik Devletleri'nın Kaliforniya eyaletinin en kalabalık ve ABD'nın New York'tan sonra ikinci en kalabalık şehri. Los Angeles'ın nüfusu 2010 itibarıyla 3.792.621 kişidir. Şehir sınırlarına göre yüzölçümü 1.215 km² olup Büyük Okyanus'un doğu kıyısında, güney Kaliforniya'da konumlanmıştır.\n\n"
            "Şehir daha büyük olan 12.828.837 kişi nüfuslu Los Angeles-Long Beach-Santa Ana metropoliten istatistiksel bölgesinin ve 18 milyon kişiyi aşan nüfusa sahip Büyük Los Angeles Bölgesi'nin merkezinde yer alır. Böylece Los Angeles ABD'de ikinci büyük metropoliten bölgede ve tüm dünyanın en büyük metropoliten bölgelerinden birinde bulunur.\n\n"
            "Los Angeles, Kaliforniya eyaletinin Los Angeles County'sinin merkezidir. Bu county ABD kontluklarının en kalabalık ve en yüksek etnik çeşitliliğe sahip olanıdır.\n\n"
            "Los Angeles ABD'nin en dinamik metropollerindendir. Hollywood sinema film endüstrisine, Anaheim'de Disneyland'a ev sahipliği yapar. ABD'nin en eski film ve sinema okulu bu şehirdedir. Medya ve ilgi çeşitliliği nedeniyle spor ve kültürel aktivitelerde iç içedir. New York'tan sonraki ikinci büyük VHF medya marketine sahiptir.Artistler, yazarlar, ve yapımcılar ya da ünlü sanatçıların en fazla bu şehirde bulunması nedeniyle \"Kreatif Başkent\" olarak da adlandırılır.",
        ulke: "Kaliforniya",
        type: 2,
        yerler: [
          Places(
              adi: 'Santa Monica',
              aciklama: "Santa Monica, ABD'nin Kaliforniya Eyaletine bağlı Los Angeles İlçesinin Batı kıyısında yer alan bir şehirdir.\n\nİsmini, Hristiyan azize Monica'dan almıştır. Santa Monica Körfezi, kuzeyde Brentwood, batıda Los Angeles, doğuda Mar Vista ve güneydoğuda ise Venice ile komşudur. Santa Monica, birçok Hollywood starı ve yönetmeninin ilgi odağında olduğu gibi; öğrenciler, yazlıkçılar ve çevre şehirlerden gelen bireylerin de tercihidir. Santa Monica'nın nüfusu, 2010 sayımına göre 89.736'dır.",
              fotograf: 'santa monica'),
          Places(
              adi: 'Hollywood Bulvarı',
              aciklama: "Şöhret Yolu 1958'de açılmıştır. Yıldızlar Consolidated Terrazo Company adlı şirket tarafından yapılmıştır. 1978 yılında Los Angeles belediyesi, Şöhret Yolu'nu tarihi eser kapsamında koruma altına almıştır. Bir ayda yaklaşık iki yeni yıldız gelir. Her ne kadar bazı yıldızlar çalınmış olsa da, Haziran 2008'de bölgede restorasyon çalışmaları başlatıldı.\n\nGüney Kaliforniya'lı sanatçı Oliver Weissmuller tarafından tasarlanmıştır. Sonraları burası şehrin en önemli bölgelerinden biri sayılmıştır. Bulvarın güvenliği, finansman tarafından sağlanır. İlk sekiz yıldız Eylül 1958 yılında kaldırıma konulmuştur. Ocak 1959 yılında, on iki katlı İlk Federal Tasarruf ve Hollywood Kredi binası tamamlanmıştır. Bulvarın adı 1960 yılı öncesinde Şöhret Zemin olarak bilinmektedir. Sadece gerçek insanların değil, kurgu karakterlerin yıldızları da olan bu bölgede ilk yıldıza sahip olan kişi 9 Şubat 1960'ta Joanna Woodward olmuştur.\n\nTüm yıldızlar yerde, kaldırımların üstünde yerleştirilmişlerdir. Bunun tek istisnası ünlü boksör Muhammed Ali için konulan yıldızdır; Muhammed Ali 'Peygamberim Muhammed'in adını ayaklar altına koydurmam' deyip, bunda diretince organizatörler talebini kabul etmişler ve Muhammed Ali'nin yıldızını üstüne basılmaması için Kodak Theatre'ın duvarına asmışlardır.",
              fotograf: 'hollywood bulvarı'),
          Places(
              adi: 'Universal Studios',
              aciklama: "Universal Studios Hollywood, California, Los Angeles County'nin San Fernando Valley bölgesinde yer alan bir film stüdyosu ve tema parkıdır. Stüdyonun yaklaşık% 70'i Universal City olarak bilinen tüzel kişiliğe sahip olmayan ilçe adasında, geri kalanı ise Los Angeles, California şehir sınırları içinde yer almaktadır. Halen kullanımda olan en eski ve en ünlü Hollywood film stüdyolarından biridir. Resmi pazarlama başlığı 'LA'nın Eğlence Başkenti' dir. Başlangıçta gerçek Universal Studios setlerinin turlarını sunmak için yaratıldı ve dünya çapında bulunan birçok tam teşekküllü Universal Studios Tema Parkının ilkidir.",
              fotograf: 'universal studios'),
        ],
        yemekler: [
          Foods(ad: 'Ciğer Sarma', aciklama: 'ciğer sarma açıklaması', fotograf: 'cigersarma'),
          Foods(ad: 'Tava Ciğer', aciklama: 'tava ciğer açıklaması', fotograf: 'tavacigeri'),
          Foods(ad: 'Zirva', aciklama: 'yufkalı büryan açıklaması', fotograf: 'zirva'),
        ]),
  ];
}
