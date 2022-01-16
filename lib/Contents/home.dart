import 'package:flutter/material.dart';

class landing extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 70,
            ),
            const Text(
              'BLink',
              style: TextStyle(
                  color: Colors.black87,
                  // color: Color(0xff388A75),
                  fontFamily: 'LuckiestGuy',
                  fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/landing-page.png',
                  height: 320.0,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/student');
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 50, right: 50, bottom: 4, top: 4),
                        child: Text(
                          'Student',
                          style: TextStyle(
                            color: Color(0xff546E7A),
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Colors.white.withOpacity(.45),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/teacher');
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 49, right: 49, bottom: 4, top: 4),
                        child: Text(
                          'Teacher',
                          style: TextStyle(
                            color: Color(0xff546E7A),
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Colors.white.withOpacity(.4),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/parent');
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 53, right: 53, bottom: 4, top: 4),
                        child: Text(
                          'Parent',
                          style: TextStyle(
                            color: Color(0xff546E7A),
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Colors.white.withOpacity(.4),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
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
