// ignore_for_file: avoid_unnecessary_containers, avoid_print, sort_child_properties_last, unused_local_variable, camel_case_types, unnecessary_null_comparison
import 'package:fltterfly/services/api_services.dart';
import 'package:fltterfly/views/home.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({super.key});
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          center: Alignment.topRight,
          colors: [
            const Color.fromARGB(255, 3, 37, 16),
            Colors.black,

            Colors.black,
            const Color.fromARGB(255, 3, 52, 22),
            const Color.fromARGB(255, 8, 126, 26),
            const Color.fromARGB(255, 6, 97, 20),
            const Color.fromARGB(255, 2, 50, 21),
            const Color.fromARGB(255, 12, 53, 7),
            const Color.fromARGB(255, 6, 61, 14),
            Colors.black,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(backgroundColor: Colors.transparent),
        ),
        body: Column(
          children: [
            SizedBox(height: 75),
            Container(
              padding: EdgeInsets.all(19),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Text(
                    "complete the details to continue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintText: 'Enter you name',
                      labelText: "Enter your name",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: agecontroller,
                    decoration: InputDecoration(
                      hintText: 'enter your age',
                      labelText: "Enter your age",
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => Homepage(
                          name: namecontroller.text,
                          age: agecontroller.text,
                        ),
                  ),
                );
                if (senddata(namecontroller, agecontroller) == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Please fill all fields"),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Data submitted successfully"),
                      backgroundColor: Colors.green,
                    ),
                  );
                }

                print("submitted");
              },
              child: Text(
                "Submit",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
