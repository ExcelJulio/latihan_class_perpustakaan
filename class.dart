void main () {
    //membuat objek dari class
    var komputer1 = Komputer();
    komputer1.merek = 'Asus';
    komputer1.cpu = 'I7 12700H';
    komputer1.slotram.add(8);
    // print(komputer1.merek);
    // print(komputer1.ram);
    // print(komputer1.penyimpanan);
    // print(komputer1.cpu);
    
    // cara cepat cetak menggunakan function
    komputer1.cetak();

    //contoh buat objek baru
    var komputer2 = Komputer();
    komputer2.merek = 'Lenovo';
    komputer2.cpu = 'I3 GEN 12';
    komputer2.slotram.add(8);
    komputer2.slotram.add(8);
    // print(komputer2.merek);
    // print(komputer2.ram);
    // print(komputer2.penyimpanan);
    // print(komputer2.cpu);

    //cara cepat cetak menggunakan function
    komputer2.cetak();


    var mahasiswa1 = Mahasiswa();
    mahasiswa1.Nama = 'Egi';
    mahasiswa1.Npm = '25413111';
    mahasiswa1.Usia = 20;
    mahasiswa1.alamat = 'Pontianak';
    mahasiswa1.Jeniskelamin = 'Laki-laki';
    mahasiswa1.Prodi = 'Sistem informasi';
    // print(mahasiswa1.Nama);
    // mahasiswa1.cetak1();

}
//contoh class (struktur dasar)
class Komputer{
    String? merek;
    List slotram = [];
    List slotpenyimpanan = [];
    String? cpu;

    //FUNCTION
    cetak(){
        print('Komputer ini merek $merek');
        // print('Komputer ini punya $slotram');
        for(var i = 0; i < slotram.length; i++) {
        print('Komputer ini punya slot  ${i + 1} ${slotram[i]} gb');
        }
        print('Komputer ini memiliki cpu $cpu');
    }


}

class Mahasiswa{
    String? Nama;
    String? Npm;
    int? Usia;
    String? alamat;
    String? Jeniskelamin;
    String? Prodi;

    cetak1(){
        print('Nama mahasiswa ini adalah $Nama');
        print('Npm mahasiswa ini adalah $Npm');
        print('Usia mahasiswa ini adalah $Usia');
        print('Alamat mahasiswa ini adalah $alamat');
        print('Jenis kelamin mahasiswa ini adalah $Jeniskelamin');
        print('Program studi mahasiswa ini adalah $Prodi');
    }
}