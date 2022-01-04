/*

  Interface Segregation Principle

  Bu prensibe göre, tek bir interface yerine kullanımlarına göre parçalanmış 
  birden fazla interface ile işlemlerimiz yürütebilmeliyiz. Her farklı 
  sorumluluğun kendine özgü bir arayüzü olması gerekmektedir. Böylece 
  interface'i kullanan kişide sadece ihtiyacı olanlar ilgilenmiş olur. 

  Nesneler asla ihtiyacı olmayan varlıklar içeren interfaceleri implement 
  etmeye zorlanmamalıdır.

*/

abstract class Hayvan {
  void havlamak();
  void kosmak();
  void ucmak();
}

// Köpek nesnesi için uçmak fonksiyonu gereksizdir.
class Kopek implements Hayvan {
  String? isim;

  Kopek(this.isim) {}

  @override
  void havlamak() {
    print('Köpektir, Havlar');
  }

  @override
  void kosmak() {
    print('Köpektir, Koşar');
  }

  @override
  void ucmak() {}
}

// Kuş nesnesi için Koşmak ve Havlamak fonksiyonları gereksizdir.
class Kus implements Hayvan {
  String? isim;

  Kus(this.isim) {}

  @override
  void havlamak() {}

  @override
  void kosmak() {}

  @override
  void ucmak() {
    print('Kuştur, Uçar');
  }
}

/*

  Bu kısımda, hem Kuş nesnesine hem de Köpek nesnesine kullanılmayacak 
  fonksiyonlar eklenmek durumunda kalmıştır. Bunlar interfaceden gelir. Buna 
  engel olmak için birden fazla interface ile özellileri bir nesnede toplamak
  daha doğru olur. 

  Çözüm ise:

*/

abstract class Ucabilen {
  void ucmak();
}

abstract class Kosabilen {
  void kosmak();
}

abstract class Havlayabilen {
  void havlamak();
}

class Kedi implements Kosabilen {
  String? isim;

  Kedi(this.isim);

  @override
  void kosmak() {
    print('Kedidir, Koşabilir');
  }
}

class _Kopek implements Kosabilen, Havlayabilen {
  String? isim;

  _Kopek(this.isim);

  @override
  void havlamak() {
    print('Köpektir, Havlar');
  }

  @override
  void kosmak() {
    print('Köpektir, Koşar');
  }
}




/*

  Birden fazla fonksiyonu, interfacelere dağıtarak, nesnelerin fonksiyon 
  tanımlarına zorlanması engellenmiş oldu. Bu sayede kullanıcı sadece kendi ile
  alakalı işlemleri kullanabileceği anlamına geliyor.

*/