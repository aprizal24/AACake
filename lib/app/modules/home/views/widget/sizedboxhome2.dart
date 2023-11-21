import 'package:demo_modul2/app/modules/cakechiffron/views/cakechiffron_view.dart';
import 'package:demo_modul2/app/modules/cakeslice/views/cakeslice_view.dart';
import 'package:flutter/material.dart';

class SizedBox2Home extends StatelessWidget {
  const SizedBox2Home({
    super.key,
    required TabController? tabController,
  }) : _tabController = tabController;

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 50.0,
      width: double.infinity,
      child: TabBarView(
        controller: _tabController,
        children: [
          Container(),
          CakesliceView(),
          const CakechiffronView(),
        ],
      ),
    );
  }
}
