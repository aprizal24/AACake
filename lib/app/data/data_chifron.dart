class Cake_chiffron {
  final int id;
  final String nama;
  final String harga;
  final String lnkGambar;
  final bool favorit;
  final String subMenu;

  Cake_chiffron({
    required this.id,
    required this.nama,
    required this.harga,
    required this.lnkGambar,
    required this.favorit,
    required this.subMenu,
  });
}

final List<Cake_chiffron> listChiffron = [
  Cake_chiffron(
    id: 1,
    nama: 'Chiffron Cokelat',
    harga: '250.000',
    lnkGambar: 'assets/chiffroncakecoklat.jpeg',
    favorit: true,
    subMenu: 'cake_Chiffron',
  ),
  Cake_chiffron(
    id: 2,
    nama: 'Chiffron Pandan',
    harga: '200.000',
    lnkGambar: 'assets/chiffronpandan.jpeg',
    favorit: false,
    subMenu: 'cake_Chiffron',
  ),
];
