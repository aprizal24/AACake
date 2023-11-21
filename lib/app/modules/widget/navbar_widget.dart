import 'package:demo_modul2/app/modules/imagepicker/views/imagepicker_view.dart';
import 'package:demo_modul2/app/modules/webview/views/webview_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({Key? key}) : super(key: key);
  //navbar bawh
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias, //untuk agar bottom bisa melengkung
      shape: const CircularNotchedRectangle(), //agar sprti ada lingkaran
      notchMargin: 8,
      color: Colors.transparent,
      elevation: 10, //bayang bayang
      child: Container(
        height: 50.0,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.home,
                    color: Color(0xFFEF7532),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF676E79),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(WebviewView());
                      },
                      icon: Icon(
                        Icons.call,
                        color: Color(0xEF676e79),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(ImagepickerView());
                        },
                        icon: Icon(
                          Icons.person_outline,
                          color: Color(0xEF676e79),
                        )),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
