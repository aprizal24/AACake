class Cake {
  final int id;
  final String nama;
  final String harga;
  final String lnkGambar;
  final bool favorit;
  final String subMenu;

  Cake({
    required this.id,
    required this.nama,
    required this.harga,
    required this.lnkGambar,
    required this.favorit,
    required this.subMenu,
  });
}

final List<Cake> listCakes = [
  Cake(
    id: 1,
    nama: 'Coklat Oreo Cake',
    harga: '150.000',
    lnkGambar: 'assets/coklatoreo.jpeg',
    favorit: true,
    subMenu: 'cake_slice',
  ),
  Cake(
    id: 2,
    nama: 'Ice Cream Cake',
    harga: '80.000',
    lnkGambar: 'assets/icecream.jpeg',
    favorit: false,
    subMenu: 'cake_slice',
  ),
  Cake(
    id: 3,
    nama: 'Mandarin Oriental Cake',
    harga: '170.000',
    lnkGambar: 'assets/mandainoriental.jpeg',
    favorit: true,
    subMenu: 'cake_slice',
  ),
  Cake(
    id: 4,
    nama: 'Pandan Cake',
    harga: '76.000',
    lnkGambar: 'assets/pandan.jpg',
    favorit: false,
    subMenu: 'cake_slice',
  ),
  Cake(
    id: 5,
    nama: 'Strawberry Keju',
    harga: '140.000',
    lnkGambar: 'assets/strowberrykeju.jpeg',
    favorit: true,
    subMenu: 'cake_slice',
  ),
];
