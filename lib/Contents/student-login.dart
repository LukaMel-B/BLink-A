import 'package:flutter/material.dart';

class studlogin extends StatefulWidget {
  const studlogin({Key? key}) : super(key: key);

  @override
  _studloginState createState() => _studloginState();
}

class _studloginState extends State<studlogin> {
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
                  'Login',
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
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'images/student-login.png',
                  height: 250,
                  width: 250,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55,bottom: 5,left: 50,right: 50),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                        hintText: "     Username",
                        fillColor: const Color(0xffFDF9F9).withOpacity(0.3),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 20,left: 50,right: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                      hintText: "     Username",
                      fillColor: const Color(0xffFDF9F9).withOpacity(0.3),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,left: 25),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/parlogin');
                      },
                      child: const Text(
                        ' Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),

                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15, right: 10),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/parlogin');
                      },
                      child: const Icon(Icons.arrow_forward_rounded,
                          size: 30,
                          color: Colors.white
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                    ),
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

