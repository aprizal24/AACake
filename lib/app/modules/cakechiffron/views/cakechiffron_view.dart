import 'package:demo_modul2/app/data/data_chifron.dart';
import 'package:demo_modul2/app/modules/cakechiffron/views/widget/herochif.dart';
import 'package:demo_modul2/app/modules/cakechiffron/views/widget/paddingchif.dart';
import 'package:demo_modul2/app/modules/cakechiffron/views/widget/paddingchif2.dart';
import 'package:demo_modul2/app/modules/cakechiffron/views/widget/paddingchif3.dart';
import 'package:demo_modul2/app/modules/cakechiffron/views/widget/sizedboxchif.dart';
import 'package:demo_modul2/app/modules/cakechiffron/views/widget/sizedboxchif2.dart';
import 'package:demo_modul2/app/modules/cakechiffron/views/widget/textchif.dart';
import 'package:demo_modul2/app/modules/cakechiffron/views/widget/textchif2.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cakechiffron_controller.dart';

class CakechiffronView extends GetView<CakechiffronController> {
  const CakechiffronView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEF7532),
      body: ListView(
        children: [
          SizedBoxChif(),
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _buildCard(listChiffron[index], context);
              },
              itemCount: listChiffron.length,
            ),
          ),
          const SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(
    Cake_chiffron cake,
    context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        //ketika di klik akan masuk ke detail
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              PaddingChif(cake),
              HeroChif(cake),
              SizedBoxChif2(),
              TextChif(cake),
              TextChif2(cake),
              PaddingChif2(),
              PaddingChif3(),
            ],
          ),
        ),
      ),
    );
  }
}
