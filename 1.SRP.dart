/*

  Single Responsibility Principle

  Bir Nesnenin yalnızca bir görevi olmalıdır. Nesne yalnızca bir amaç uğruna 
  değiştirilebilir. Yüklenen sorumluluktan fazlası yüklenmemelidir, yapacağı iş 
  tek olmalıdır. Nesne bu durumda yalnızca Fonksiyona da indirgenebilir.

  Örnek: Odamızın ışığını açmamızı ve kapatmamızı sağlayan Anahtar. Tek 
  görevi Işığı ve kapatmaktır.

*/

// ignore_for_file: unused_element

import 'dart:core';

class Anahtar {
  int id;
  String lokasyon;
  bool durum;

  Anahtar(this.id, this.lokasyon, this.durum) {
    print('$lokasyon da bulunan ışığı açıp kapatırım');
  }

  int? get anahtarID {
    return this.id;
  }

  String? get anahtarLokasyon {
    return this.lokasyon;
  }

  void veritabaniAksiyonu() {
    // Alakalı değişiklikleri veritabanında yapar.
  }

  void lambaYak() {
    if (durum) {
      print('Lamba Zaten Yanıyor');
    } else {
      durum = true;
      print('Lamba Yandı');
    }
  }

  void lambaSondur() {
    if (durum) {
      print('Lamba Zaten Yanmıyor');
    } else {
      print('lamba Söndü');
    }
  }
}

/*
Yukarıdaki anahtar örneğinde görüldüğü üzere, anahtar sadece bir görevi 
üstlenmiyor. Hem fiziksel işlevi, hem de veritabanında bilgilerinin saklanması 
görevlerine sahip. Dolayısıyla Single Responsibility Principle şartını ihlal 
ediyor.

Çözüm ise,
*/

class _Anahtar {
  int? id;
  bool durum;

  _Anahtar(this.id, this.durum) {
    print('Anahtarın Fiziksel Varlığıyım');
  }

  int? get anahtarID {
    return this.id;
  }

  void lambaYak() {
    if (durum) {
      print('Lamba Zaten Yanıyor');
    } else {
      durum = true;
      print('Lamba Yandı');
    }
  }

  void lambaSondur() {
    if (durum) {
      print('Lamba Zaten Yanmıyor');
    } else {
      print('lamba Söndü');
    }
  }
}

class _AnahtarDB {
  int id;
  String lokasyon;

  _AnahtarDB(this.id, this.lokasyon) {
    print('Anahtarın Sanal Referansıyım');
  }

  void veritabaniAksiyonu() {}
}


/*

Göründüğü üzere, Anahtar Nesnesi iki farklı şekilde, kendi sorumluluklarını 
alabileceği şekilde ayrılmış olup Single Responsibility Principle yazımına 
uygun halde getirilmiş. Görevlerinden fazlası yüklenmeden yapılmıştır. Bu s
ayede ileride oluşabilecek hatalardan oluşacak Domino Efektinin önüne 
geçilmiştir.

*/