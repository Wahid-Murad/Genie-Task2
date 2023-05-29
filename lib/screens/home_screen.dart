import 'package:flutter/material.dart';
import 'package:genie_task/const/suggestion.dart';
import 'package:genie_task/const/suggestion2.dart';
import 'package:genie_task/screens/available_shift.dart';
import 'package:genie_task/screens/available_shift2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: Text(
                    'Shift Planner',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 15, right: 12),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: size.width * 0.75,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF4F7F9),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: TextField(
                          onChanged: (value) {},
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(top: 8, bottom: 12),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 20,
                              color: Color(0XFFB7BAC2),
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color(0XFFB7BAC2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF89818),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Image.asset(
                          'assets/images/vector.png',
                          width: 13,
                          height: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Suggestion box After the search box
              Suggestion(),
              Suggestion2(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: Text(
                      'Available Shifts',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  )),
              //Available Shifts UI
              AvailableShift(),
              AvailableShift2(),
            ],
          ),
        ),
      ),
    );
  }
}
