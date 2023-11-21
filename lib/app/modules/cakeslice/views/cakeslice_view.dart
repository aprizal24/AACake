import 'package:demo_modul2/app/data/cake_model.dart';
import 'package:demo_modul2/app/modules/cakeslice/controllers/cakeslice_controller.dart';
import 'package:demo_modul2/app/modules/cakeslice/views/widget/heroslice.dart';
import 'package:demo_modul2/app/modules/cakeslice/views/widget/paddinghome2.dart';
import 'package:demo_modul2/app/modules/cakeslice/views/widget/paddinghome3.dart';
import 'package:demo_modul2/app/modules/cakeslice/views/widget/paddingslice.dart';
import 'package:demo_modul2/app/modules/cakeslice/views/widget/sizedbox3.dart';
import 'package:demo_modul2/app/modules/cakeslice/views/widget/sizedboxslice.dart';
import 'package:demo_modul2/app/modules/cakeslice/views/widget/sizedboxslice2.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'widget/texthome2.dart';

class CakesliceView extends GetView<CakesliceController> {
  final controller = Get.put(CakesliceController());
  CakesliceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 144, 33),
      body: ListView(
        children: [
          SizedBoxSlice(),
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
                return _buildCard(controller.cakes[index], context);
              },
              itemCount: controller.cakes.length,
            ),
          ),
          SizedBoxSlice2()
        ],
      ),
    );
  }

  Widget _buildCard(
    Result cake,
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
              PaddingSlice(cake),
              HeroSlice(cake),
              SizedBox3(),
              // TextHome(cake),
              TextHome2(cake),
              PaddingHome2(),
              PaddingHome3(),
            ],
          ),
        ),
      ),
    );
  }
}
