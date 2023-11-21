import 'package:demo_modul2/app/modules/home/views/widget/sizedboxhome.dart';
import 'package:demo_modul2/app/modules/home/views/widget/sizedboxhome2.dart';
import 'package:demo_modul2/app/modules/home/views/widget/tabbarhome.dart';
import 'package:demo_modul2/app/modules/home/views/widget/texthome.dart';
import 'package:demo_modul2/app/modules/widget/navbar_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // @override
    // Widget build(BuildContext context) {
    //   // TabController? _tabController;
    //   return Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: const Color(0xFFd17E50),
    //       elevation: 0.0,
    //       centerTitle: true,
    //       leading: IconButton(
    //         icon: const Icon(
    //           Icons.arrow_back,
    //           color: Color(0xFF545D68),
    //         ),
    //         onPressed: () {},
    //       ),
    //       title: const Text(
    //         'AA Cake',
    //         style: TextStyle(
    //           fontFamily: 'Varela',
    //           fontSize: 20.0,
    //           color: Color(0xFF545D68),
    //         ),
    //       ),
    //       actions: [
    //         IconButton(
    //           icon: const Icon(
    //             Icons.notifications_none,
    //             color: Color(0xFF545D68),
    //           ),
    //           onPressed: () {},
    //         )
    //       ],
    //     ),
    //     body: ListView(
    //       padding: const EdgeInsets.only(left: 20.0),
    //       children: [
    //         SizedBoxHome(),
    //         TextHome(),
    //         SizedBoxHome(),
    //         //daftar menu
    //         TabBarHome(tabController: _tabController),
    //         SizedBox2Home(tabController: _tabController),
    //       ],
    //     ),
    //     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () {},
    //       backgroundColor: const Color(0xFFF17532),
    //       child: const Icon(Icons.fastfood),
    //     ),
    //     bottomNavigationBar: const NavbarWidget(),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {},
        ),
        title: const Text(
          'AA Cake',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: [
          SizedBoxHome(),
          TextHome(),
          SizedBoxHome(),
          //daftar menu
          TabBarHome(tabController: _tabController),
          SizedBox2Home(tabController: _tabController),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: const Icon(Icons.fastfood),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
