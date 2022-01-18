import 'package:flutter/material.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffF9FFED), Color(0xffA4DADA)]),
                ),
                child: Flexible(
                  fit: FlexFit.loose,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(
                        height: 52,
                      ),
                      const SizedBox(
                        height: 52,
                      ),
                      const Text(
                        'Lets get started!',
                        style: TextStyle(
                            color: Colors.black87,
                            // color: Color(0xff388A75),
                            fontFamily: 'Rockwell',
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircleAvatar(

                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 50, bottom: 5, left: 50, right: 50),
                            child: TextField(
                              cursorColor: const Color(0xff46665E),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                const TextStyle(color: Color(0xffABAAAA)),
                                hintText: "Full Name",
                                fillColor:
                                const Color(0xffFDF9F9).withOpacity(0.39),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 50, right: 50),
                            child: TextField(
                              cursorColor: const Color(0xff46665E),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                const TextStyle(color: Color(0xffABAAAA)),
                                hintText: "Email",
                                fillColor:
                                const Color(0xffFDF9F9).withOpacity(0.38),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50, right: 10, bottom: 10, top: 10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 13,
                                        top: 13),
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
                                          borderRadius:
                                          BorderRadius.circular(30)),
                                      backgroundColor:
                                      Colors.white.withOpacity(.4),
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 10, top: 10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 13,
                                        top: 13),
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
                                          borderRadius:
                                          BorderRadius.circular(30)),
                                      backgroundColor:
                                      Colors.white.withOpacity(.4),
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 50, bottom: 10, top: 10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 13,
                                        top: 13),
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
                                          borderRadius:
                                          BorderRadius.circular(30)),
                                      backgroundColor:
                                      Colors.white.withOpacity(.4),
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 50, right: 50),
                            child: TextField(
                              cursorColor: const Color(0xff46665E),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                const TextStyle(color: Color(0xffABAAAA)),
                                hintText: "Phone number",
                                fillColor:
                                const Color(0xffFDF9F9).withOpacity(0.35),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 30, left: 50, right: 50),
                            child: TextField(
                              cursorColor: const Color(0xff46665E),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                const TextStyle(color: Color(0xffABAAAA)),
                                hintText: "Password",
                                fillColor:
                                const Color(0xffFDF9F9).withOpacity(0.35),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 18, bottom: 25, right: 15),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/student-profile');
                                  },
                                  child: const Icon(Icons.arrow_forward_rounded,
                                      size: 30, color: Colors.white),
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(15)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
