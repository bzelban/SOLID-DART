/*

  Dependency Inversion Principle

  
  Geliştirmede, nesneler arası bağımlılıklar mümkün mertebe az tutulmadır ve 
  özellikle Üst-nesneler, alt-nesnelere asla bağımlı olmamalıdır. Bağımlılıklar
  soyut kalmalıdır, somut (concrete) değil.



  Abstractions should not depend on details. Details should depend upon
  abstractions.


  Ayrıca bilinmesi gereken DIP, geliştirmede LSP kuralını da sağlar.

*/

abstract class Mesaj {
  void mesajGonder();
}

class SMS implements Mesaj {
  @override
  void mesajGonder() {
    _smsGonder();
  }

  void _smsGonder() {
    print('SMS Gönderildi');
  }
}

class Mail implements Mesaj {
  @override
  void mesajGonder() {
    emailGonder();
  }

  void emailGonder() {
    print('Mail Gönderildi');
  }
}


/*

  Yukarıda soyut olarak tanımlanan mesaj arayüzü, farklı nesneler içerisinde
  farklı yapılarda kullanılır hale getirildi. Interface, Generic bir kod gibi 
  görünse de artık, Nesne içerisinde gizlenmiş fonksiyonun tetiklenmesini, 
  direkt olarak erişilmemesini sağlıyor. Dolayısıyla işlem soyut katman 
  üzerinden yapılabilir hale getiriliyor. Ayrıca Üst-Interface-Nesnesi, hiç bir 
  şekilde Alt-Concrete-Nesne'lere bağlılığı bulunmamakta. 

*/