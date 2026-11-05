import 'dart:io';

void main(){
//objek class book
var book1 = book();
book1.Judul = 'Anak Cahaya';
book1.Author ='Della';
book1.tahun = 2021;



var book2 = book();
book2.Judul = 'Petualangan Acil';
book2.Author ='Ilham';
book2.tahun = 2019;
book2.borrowbook();



var book3 = book();
book3.Judul = 'Pendekar Naga';
book3.Author = 'Aminah';
book3.tahun = 2018;


var perpustakaan = librar();
perpustakaan.addbook(book1);
perpustakaan.addbook(book2);
perpustakaan.addbook(book3);

perpustakaan.displaybook();
print(" ");
perpustakaan.borrowbook('Petualangan A');
print(" ");
perpustakaan.displaybook();
}

//class

class book{
  String? Judul;
  String? Author;
  int? tahun;
  bool isborrowed = false;

  //function borrowbook
  borrowbook(){
 if (isborrowed == false ) {
    isborrowed = true;
    print('Buku dipinjamkan');
  } else{
    print('Buku sudah dipinjam');
  }
  }
 
}

class librar {
  List<book> books = [];

  addbook(book book) {
    books.add(book);
    print('Buku sudah ditambahkan');
  }

  displaybook() {
    for (var element in books) {
    print('${element.Judul} | ${element.Author} | ${element.tahun} | ${element.isborrowed == true ? 'Dipinjam' : 'Tersedia'}' );
  }
}
borrowbook(String title){
  for (var element in books) {
    if(element.Judul == title ) {
      element.isborrowed = true;
      print('Buku dengan judul ${element.Judul} sudah dipinjam');

    }
    
  }
}
}