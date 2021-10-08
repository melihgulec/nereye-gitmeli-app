# Nereye Gitmeli?

Flutter teknolojisini kullanarak geliştirmiş olduğum bir gezi rehberi uygulamasıdır. Şehirler hakkında bilgiler alabilir, şehirleri favorilerinize ekleyebilir, gerçekleştireceğiniz geziler sırasında planlama yapabilir ve bir sonraki gezi hedefinizi yapabilirsiniz.

## Uygulamanın Barındırığı İçerikler

- Şehirler hakkında bilgiler yer almaktadır.
- Şehirlerin gezilecek yerleri listelenmektedir. Bunlar hakkında bilgiler gösterilmektedir.
- Şehirlerin anlık hava durumları gösterilmektedir.
- Kullanıcılar, şehirler hakkında yorum yapabilmektedir.
- Şehirlerin ünlü yemekleri gösterilmektedir.
- Gidilecek şehir için bir bütçe planlaması yapılabilmektedir.
- Şehirler favorilere eklenebilir.
- Bir yapılacaklar listesi gibi geziler planlanabilir.

## Kullanılan Teknolojiler

### Firebase
Uygulamada yer alan giriş ve kayıt olma **Firebase authentication**, şehirler hakkında yorum yapabilme özellikleri **Firestore** kullanılarak yapılmıştır.

### SQLite
Uygulamada yer alan hedefler, favoriler, planlama ve gezi bütçesi özellikleri **SQLite** veri tabanı kullanılarak yapılmıştır.

## Kullanılan API Servisleri

### OpenWeather API
Her bir şehir sayfasında yer alan hava durumu bilgisi [**OpenWeatherAPI**](https://openweathermap.org/api) kullanılarak yapılmıştır. Anlık hava durumu bilgisi kullanılmaktadır.

### UI Avatars
Kullanıcıların profil ekranlarında yer alan fotoğraflar [**UI Avatars API**](https://ui-avatars.com/) kullanılarak çekilmiştir. Kullanıcıların adlarının baş harfleri kullanılarak bir profil fotoğrafı oluşturulmaktadır.

## Ekran Görüntüleri
![mainpage](https://user-images.githubusercontent.com/25778131/136622330-38513405-fe49-4829-ad25-65a768d4abed.png)
![mainpage2](https://user-images.githubusercontent.com/25778131/136622507-83c2daa8-f54a-416f-952e-20b2642637cb.png)

![sehirsayfasi1](https://user-images.githubusercontent.com/25778131/136622342-9af2f47f-1246-4b31-bfa2-532aa3822dfd.png)
![sehirsayfasi2](https://user-images.githubusercontent.com/25778131/136622350-3b692456-030f-46a9-bc5c-378cb8e47105.png)

![sehirsayfasi3](https://user-images.githubusercontent.com/25778131/136622356-552b1f89-4274-4fd1-8e23-a4255c21f798.png)
![havadurumu](https://user-images.githubusercontent.com/25778131/136622361-71680372-99c7-4814-a04f-52f0547fe4af.png)
![commentpage](https://user-images.githubusercontent.com/25778131/136622365-86a201e1-1f11-410f-a2f4-068fbb28729a.png)
