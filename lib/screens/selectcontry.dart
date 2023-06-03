import 'package:flutter/material.dart';
import 'package:slr_shoppee/const.dart';
import 'package:slr_shoppee/screens/selectlanguage.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({super.key});

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  var country = [
    "Afghanistan",
    "Argentina",
    "Australia",
    "Bahrain",
    "Belgium",
    "Brazil",
    "Canada",
    "China",
    "Denmark",
    "Egypt",
    "France",
    "Germany",
    "Hungary",
    "India",
    "Italy",
    "Japan",
    "Kuwait",
    "Mexico",
    "Nigeria",
    "North Korea",
    "Oman",
    "Pakistan",
    "Portugal",
  ];
  var flag = [
    "https://cdn-icons-png.flaticon.com/128/197/197515.png",
    "https://cdn-icons-png.flaticon.com/128/197/197573.png",
    "https://cdn-icons-png.flaticon.com/128/323/323367.png",
    "https://cdn-icons-png.flaticon.com/128/197/197521.png",
    "https://cdn-icons-png.flaticon.com/128/197/197583.png",
    "https://cdn-icons-png.flaticon.com/128/3909/3909370.png",
    "https://cdn-icons-png.flaticon.com/128/197/197430.png",
    "https://cdn-icons-png.flaticon.com/128/197/197375.png",
    "https://cdn-icons-png.flaticon.com/128/197/197565.png",
    "https://cdn-icons-png.flaticon.com/128/323/323324.png",
    "https://cdn-icons-png.flaticon.com/128/323/323315.png",
    "https://cdn-icons-png.flaticon.com/128/197/197571.png",
    "https://cdn-icons-png.flaticon.com/128/197/197584.png",
    "https://cdn-icons-png.flaticon.com/128/9906/9906480.png",
    "https://cdn-icons-png.flaticon.com/128/323/323325.png",
    "https://cdn-icons-png.flaticon.com/128/197/197604.png",
    "https://cdn-icons-png.flaticon.com/128/197/197459.png",
    "https://cdn-icons-png.flaticon.com/128/5372/5372848.png",
    "https://cdn-icons-png.flaticon.com/128/5922/5922004.png",
    "https://cdn-icons-png.flaticon.com/128/197/197600.png",
    "https://cdn-icons-png.flaticon.com/128/197/197635.png",
    "https://cdn-icons-png.flaticon.com/128/197/197606.png",
    "https://cdn-icons-png.flaticon.com/128/5372/5372974.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 750,
            decoration: BoxDecoration(color: yellowbg),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "Select Your Country",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        color: blackbg),
                  ),
                  subtitle: Text(""),
                ),
                Container(
                  height: 580,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 0,
                            offset: Offset(0, 10)),
                      ]),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        height: 48,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 225, 225, 225),
                            borderRadius: BorderRadius.circular(40)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 460,
                        width: 330,
                        child: ListView.builder(
                          itemCount: country.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (builder) =>
                                            SelectLanguage()));
                              },
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(flag[index]),
                                ),
                                title: Text(country[index]),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
