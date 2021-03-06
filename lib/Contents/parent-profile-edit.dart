import 'package:blink/Contents/parent-profile-view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:blink/Contents/functions/sform.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ParentProfileEdit extends StatefulWidget {
  const ParentProfileEdit({Key? key}) : super(key: key);

  @override
  _ParentProfileEditState createState() => _ParentProfileEditState();
}

class _ParentProfileEditState extends State<ParentProfileEdit> {
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;
  String? loggedUser;
  final name = TextEditingController();
  final occupation = TextEditingController();
  final father = TextEditingController();
  final mother = TextEditingController();
  final altMobile = TextEditingController();
  final mobile = TextEditingController();
  getItemAndNavigate(BuildContext context) {
    try {
      final details = _fireStore.collection("users").doc(loggedUser).update({
        "Occupation": occupation.text,
        "Father": father.text,
        "Mother": mother.text,
        "AlternateMobileNumber": altMobile.text,
      });

      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const ParentProfile())));
    } catch (e) {
      print(e);
    }
  }

  void getUserID() async {
    try {
      final users = await _auth.currentUser;
      if (users != null) {
        loggedUser = users.uid;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserID();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffF9FFED), Color(0xffA4DADA)]),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 49,
                    ),
                    const Center(
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.black87,
                            // color: Color(0xff388A75),
                            fontFamily: 'Rockwell',
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor:
                          const Color(0xffFDF9F9).withOpacity(0.99),
                    ),
                    _normalPadding(
                      child: Formfield(
                          controllers: name,
                          hintText: "full name",
                          type: TextInputType.name),
                    ),
                    _normalPadding(
                      child: Formfield(
                          controllers: occupation,
                          hintText: "Occupation",
                          type: TextInputType.name),
                    ),
                    _normalPadding(
                        child: Row(
                      children: [
                        Formfield(
                            controllers: father,
                            hintText: "Father name",
                            type: TextInputType.name),
                        Formfield(
                            controllers: mother,
                            hintText: "Mother name",
                            type: TextInputType.name),
                      ],
                    )),
                    _normalPadding(
                      child: Formfield(
                        controllers: mobile,
                        hintText: "mobile number",
                        type: TextInputType.number,
                      ),
                    ),
                    _normalPadding(
                      child: Formfield(
                        controllers: altMobile,
                        hintText: "Alternate mobile number",
                        type: TextInputType.number,
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
                              getItemAndNavigate(context);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: ((context) =>
                              //             const ParentProfile())));
                            },
                            child: const Icon(Icons.arrow_forward_rounded,
                                size: 30, color: Colors.white),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _normalPadding({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 50,
        right: 50,
      ),
      child: child,
    );
  }
}
