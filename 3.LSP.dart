/*

  Liskov Substitution Principle

  Kodda herhangi bir değişiğe gerek duymadan alt sınıfları, türetildikleri üst
  sınıflarına yerine kullanabilmeliyiz. Yani, alt-nesne, türedildiği 
  süper-nesneyi örnek alarak ve gelişerek kullanılabilinmelidir. 

  "Boynuz Kulağı Geçer" olarak aklınızda kalsın.

*/

class Homoerectus {
  String? isim;
  String? ozellik;

  Homoerectus(this.isim, this.ozellik) {}

  String? get isimGetir {
    return this.isim;
  }

  String? get ozellikGetir {
    return this.ozellik;
  }
}

class Homosaphiens implements Homoerectus {
  String? isim;
  String? ozellik;
  String? arac;

  Homosaphiens(this.isim, this.ozellik, this.arac) {}

  String? get isimGetir {
    return this.isim;
  }

  String? get ozellikGetir {
    return this.ozellik;
  }

  String? get kullandigiArac {
    return this.arac;
  }
}


/*

  Burada bahsi geçen, Homosaphien, atası olan Homoerectusun kalıtsal 
  özelliklerini alır ve kendini geliştirir. Dolayısıyla, bu kod LSP'ye uygun
  geliştirilmiş olur. Üst sınıfın değişmesine gerek duyulmadan, karakter 
  özelliklerine bağlı kalarak, alt sınıf bu sayede geliştirilmiş oldu.    

*/