/*

Open-Closed Principle

  Nesneler, Modüller veya Fonksiyon gibi Varlıklar geliştirmeye açık, 
  değiştirmeye kapalı olmalıdır. 

*/

// ignore_for_file: unused_element
// ignore_for_file: unused_local_variable

class Demirbas {
  String? isim;

  Demirbas(this.isim) {}

  String? get isimGetir {
    return this.isim;
  }

  void neYapar(girdi) {
    girdi.forEach((e) {
      if (e.isimGetir == 'Kalem') {
        print("Ben Yazı yazarım");
      } else if (e.isimGetir == 'Masa') {
        print("Benim Üzerimde Çalışabilirsin");
      } else if (e.isimGetir == 'Sandalye') {
        print("Bana oturup çalışabilirsin");
      }
    });
  }
}

void listeyiGetir(List girdi) {
  girdi.forEach((e) {
    print(e.isimGetir);
  });
}

void main() {
  List liste = [Demirbas('Kalem'), Demirbas('Masa'), Demirbas('Sandalye')];

  listeyiGetir(liste);
}

/*

  Göründüğü üzere liste, yalnızca içine aldığı kadarıyla işlem görür. OCP'ye
  uygun olması için listenin değiştirilmeye değil, geliştirilmeye açık olması
  gerekir. Yeni bir Demirbaş nesnesi türetildiğinde, neYapar() fonksiyonu 
  çalışmaz. Dolayısıyla değiştirilmesi gerekir, geliştirilmesi değil. Çözümü 
  ise, Varlığın geliştirmeye açık olmasıdır. Her yeni eşya geldiğinde neYapar()
  değiştirilmeye ihtiyaç duyulmamalıdır. 

  Çözüm ise:

*/

class _Demirbas {
  String? isim;
  String? tanim;

  _Demirbas(this.isim, this.tanim) {}

  String? get isimGetir {
    return this.isim;
  }

  String? get tanimGetir {
    return this.tanim;
  }
}

class askilikNesne extends _Demirbas {
  askilikNesne(String? isim, String? tanim) : super(isim, tanim);
}

class bardakNesne extends _Demirbas {
  bardakNesne(String? isim, String? tanim) : super(isim, tanim);
}

void _main() {
  var _askilikNesne = new askilikNesne('Askılık', 'Bana kıyafet asabilirsin');
  var _bardakNesne = new bardakNesne('Bardak', 'Benden içecek İçebilirsin');
}


/*

  Görüldüğü üzere, Demirbaşları, Open-Closed Principle kurallarına uygun 
  yazıldığında, varlıkları değiştirmeden, geliştirmeye açık hale getirip, 
  dilediğimiz gibi ve ileride kullanabileceğimiz şekilde düzenleyebiliyoruz. 
  Varlığın davranışını değiştirmiyor, geliştirmenin gidişata zarar vermeyeceği
  hale getirip yeni özellikler kazandırabiliyoruz.
*/

