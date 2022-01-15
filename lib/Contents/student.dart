import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class student1 extends StatefulWidget {
  const student1({Key? key}) : super(key: key);

  @override
  _student1State createState() => _student1State();
}

class _student1State extends State<student1> {
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
                  'Student',
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
                  'Learning',
                  style: TextStyle(
                      // color: Colors.black87,
                      color: Color(0xff282828),
                      fontFamily: 'Roboto',
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Makes me',
                  style: TextStyle(
                      // color: Colors.black87,
                      color: Color(0xff282828),
                      fontFamily: 'Roboto',
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Happy',
                  style: TextStyle(
                      // color: Colors.black87,
                      color: Color(0xff282828),
                      fontFamily: 'Roboto',
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 35,
                ),
                Image.asset(
                  'images/student1-page.png',
                  height: 290,
                  width: 310,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          backgroundColor: Colors.white.withOpacity(.4),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/stud-login');
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
