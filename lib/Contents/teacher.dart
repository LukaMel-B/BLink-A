
import 'package:flutter/material.dart';

class teacher1 extends StatefulWidget {
  const teacher1({Key? key}) : super(key: key);

  @override
  _teacher1State createState() => _teacher1State();
}

class _teacher1State extends State<teacher1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffF9FFED), Color(0xffA4DADA)]),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Teacher',
                  style: TextStyle(
                      color: Color(0xffABAAAA),
                      // color: Color(0xff388A75),
                      fontFamily: 'Roboto',
                      fontSize: 20),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'We broad',
                  style: TextStyle(
                    // color: Colors.black87,
                      color: Color(0xff282828),
                      fontFamily: 'Roboto',
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  'little minds,',
                  style: TextStyle(
                    // color: Colors.black87,
                      color: Color(0xff282828),
                      fontFamily: 'Roboto',
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  'genius',
                  style: TextStyle(
                    // color: Colors.black87,
                      color: Color(0xff282828),
                      fontFamily: 'Roboto',
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 28,
                ),
                Image.asset(
                  'images/teaching1-page.png',
                  height: 280,
                  width: 280,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/teach-login');
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 7, right: 7, bottom: 6, top: 6),
                        child:  Icon(Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Colors.white
                        ),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: const Color(0xff050D28),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
