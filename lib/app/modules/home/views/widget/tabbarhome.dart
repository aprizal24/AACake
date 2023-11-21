import 'package:flutter/material.dart';

class TabBarHome extends StatelessWidget {
  const TabBarHome({
    super.key,
    required TabController? tabController,
  }) : _tabController = tabController;

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      labelColor: const Color(0xFFd17E50),
      isScrollable: true,
      labelPadding: const EdgeInsets.only(right: 25),
      unselectedLabelColor: Color.fromARGB(255, 7, 7, 7),
      tabs: const [
        Tab(
          child: Text('Cake Box',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 21.0,
              )),
        ),
        Tab(
          child: Text(
            'Cake Slice',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 21.0,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Chiffon',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 21.0,
            ),
          ),
        ),
      ],
    );
  }
}
