# Api Sorguları

Bu proje, farklı API'lerle iletişim kurarak çeşitli sorgular yapabilen bir iOS uygulamasını içerir.

## 1. WeatherAppApi

![WeatherApi](https://github.com/doguner1/GitImageData/blob/main/ApiQueries/WeatherAppApi/IMG_64534A6B5595-1.jpeg?raw=true)

### Proje Açıklaması

WeatherAppApi, OpenWeatherMap API üzerinden hava durumu sorgusu yapabilen bir iOS uygulamasını içerir. Uygulama, konum bilgisini kullanarak mevcut hava durumu verilerini çeker ve kullanıcı arayüzünde gösterir.

#### WeatherViewModel.swift

Bu dosya, hava durumu verilerini almak için gerekli olan ViewModel'i içerir. `fetchWeatherData` fonksiyonu, OpenWeatherMap API'sini kullanarak hava durumu verilerini çeker ve ViewModel'in `weatherData` özelliğini günceller.

#### WeatherHomeView.swift

Bu dosya, hava durumu bilgilerini kullanıcı arayüzünde gösteren SwiftUI görünümünü tanımlar. `WeatherViewModel` ve `LocationManager` sınıflarını kullanarak hava durumu verilerini alır ve görüntüler.

#### WeatherData.swift

Bu dosya, hava durumu verilerini temsil eden yapıları içerir. `WeatherData`, `WeatherResponse`, `MainWeather` ve `Weather` yapılarıyla birlikte OpenWeatherMap API yanıtlarını işler.

#### LocationManager.swift

Bu dosya, kullanıcının konumunu yöneten ve güncelleyen bir sınıfı içerir. CLLocationManager kullanarak konum izni istenir ve güncel konum bilgisi alınır.

## 2. KanyeRestApi

![KanyeApi](https://github.com/doguner1/GitImageData/blob/main/ApiQueries/KanyeResApi/Ekran%20Resmi%202024-05-28%2020.56.38.png?raw=true)

### Proje Açıklaması

KanyeRestApi, Kanye West'in rastgele sözlerini çeken bir iOS uygulamasını içerir. Uygulama, Alamofire ve URLSession kullanarak Kanye West API'siyle iletişim kurar ve rastgele bir Kanye West sözünü kullanıcı arayüzünde gösterir.

#### KanyeViewModel.swift

Bu dosya, Kanye West API'siyle iletişim kurmak ve rastgele sözleri almak için gerekli olan ViewModel'i içerir. `getKanye` ve `getKanyeUrl` fonksiyonları, `Alamofire` ve `URLSession` kullanarak API'ye istek yapar ve gelen yanıtı işler.

#### KanyeHomeView.swift

Bu dosya, rastgele Kanye West sözlerini kullanıcı arayüzünde gösteren SwiftUI görünümünü tanımlar. `KanyeViewModel` sınıfını kullanarak rastgele sözleri alır ve gösterir.

#### KanyeData.swift

Bu dosya, Kanye West API'sinden gelen yanıtları işlemek için gerekli olan yapıyı içerir. `WelcomeKanye` yapı, API'den gelen rastgele sözleri temsil eder.

## 3. JokesAppApi

![KanyeApi](https://github.com/doguner1/GitImageData/blob/main/ApiQueries/JokesAppApi/Ekran%20Resmi%202024-05-28%2021.02.13.png?raw=true)

### Proje Açıklaması

JokesAppApi, bir şaka uygulaması için şaka verilerini çeken bir iOS uygulamasını içerir. Uygulama, Alamofire kullanarak bir JSON dosyasından şaka verilerini çeker ve kullanıcı arayüzünde listeler.

#### JokesViewModel.swift

Bu dosya, şaka verilerini çekmek ve işlemek için gerekli olan ViewModel'i içerir. `getJokes` fonksiyonu, Alamofire kullanarak bir JSON dosyasından şaka verilerini çeker ve ViewModel'in `jokes` özelliğini günceller.

#### JokesHomeView.swift

Bu dosya, şaka verilerini kullanıcı arayüzünde listeleyen SwiftUI görünümünü tanımlar. `JokesViewModel` sınıfını kullanarak şaka verilerini alır ve gösterir. Ayrıca, kullanıcıya yeni bir şaka eklemek için bir buton sağlar.

#### JokesData.swift

Bu dosya, şaka verilerini temsil eden yapıları içerir. `WelcomeJokes` ve `ValueJokes` yapıları, JSON dosyasından gelen şaka verilerini işler.


## Katkıda Bulunma

- Projeyi klonlayın: `git clone https://github.com/kullanici/ApiQueries.git`
- Geliştirmelerinizi yapın.
- Değişiklikleri taahhüt edin: `git commit -am 'Yeni özellik ekle'`
- Değişiklikleri gönderin: `git push origin ana-dal`
- Bir pull talebi açın.


