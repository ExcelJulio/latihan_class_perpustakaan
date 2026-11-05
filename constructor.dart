void main () {
  var baju1 = Pakaian(jenis: 'Celana', warna: 'Biru');
  baju1.cetak();
}

class Pakaian {
  String? warna;
  String? jenis;

  //Jenis constructor 
  //1. Positional indirect argument =
  // Pakaian(warnaInput, jenisInput){
  //   this.warna = warnaInput;
  //   this.jenis = jenisInput;
  // }

  //2. Positional direct argument =
  // Pakaian(this.warna, this.jenis);

  //3. Named indirect argument
  // Pakaian({warnaInput, jenisInput}) {
  //   this.warna = warnaInput;
  //   this.jenis = jenisInput;

  //4. Named direct argument
  // Pakaian({this.jenis , this.warna});  



  cetak() {
    print('Pakaian ini adalah $jenis');
    print('Pakaian ini berwarna $warna');
  }
}