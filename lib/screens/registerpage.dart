import 'package:flutter/material.dart';
import 'package:slr_shoppee/const.dart';

class RegstrDetails extends StatefulWidget {
  const RegstrDetails({super.key});

  @override
  State<RegstrDetails> createState() => _RegstrDetailsState();
}

class _RegstrDetailsState extends State<RegstrDetails> {
  bool valuechange = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: 400,
            height: 900,
            decoration: BoxDecoration(color: yellowbg),
            child: Center(
              child: Container(
                width: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      "Enter Detials below to \ncontinue registration",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: blackbg,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Company or Business name ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: blackbg,
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: -5,
                                offset: Offset(0, 10)),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        height: 55,
                        width: 350,
                        child: TextField(
                            decoration: InputDecoration(
                                prefixIconColor: Colors.grey,
                                prefixIcon: Icon(Icons.keyboard),
                                border: InputBorder.none,
                                hintText: "Company/Bussiness")),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Enter the company or business name as registered in \nGST/PAN",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 108, 108, 108)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Set name for SLR store",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: blackbg,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: -5,
                              offset: Offset(0, 10)),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      height: 55,
                      width: 350,
                      child: TextField(
                          decoration: InputDecoration(
                              prefixIconColor: Colors.grey,
                              prefixIcon: Icon(Icons.keyboard),
                              border: InputBorder.none,
                              hintText: "Enter name")),
                    ),
                    sizedh10,
                    RadioListTile(
                        title: Text(
                          "I have GSTIN number",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        value: valuechange,
                        groupValue: "gname",
                        onChanged: (name) {
                          setState(() {});
                        }),
                    Text(
                      "GST Number",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: blackbg,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: -5,
                              offset: Offset(0, 10)),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      height: 55,
                      width: 350,
                      child: TextField(
                          decoration: InputDecoration(
                              prefixIconColor: Colors.grey,
                              prefixIcon: Icon(Icons.format_list_numbered),
                              border: InputBorder.none,
                              hintText: "Enter Number")),
                    ),
                    sizedh10,
                    Text(
                      "PAN Number",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: blackbg,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: -5,
                              offset: Offset(0, 10)),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      height: 55,
                      width: 350,
                      child: TextField(
                          decoration: InputDecoration(
                              prefixIconColor: Colors.grey,
                              prefixIcon: Icon(Icons.format_list_numbered),
                              border: InputBorder.none,
                              hintText: "Enter Number")),
                    ),
                    sizedh10,
                    CheckboxListTile(
                        title: Text(
                          "I want to sell in GST exempt category like books",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        value: valuechange,
                        onChanged: (value) {
                          setState(() {
                            valuechange = value!;
                          });
                        }),
                    sizedh10,
                    RadioListTile(
                        title: Text(
                          "I dont have GSTIN number",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        value: "value",
                        groupValue: "groupValue",
                        onChanged: (onChanged) {}),
                    sizedh20,
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: -5,
                                offset: Offset(0, 10)),
                          ],
                          color: blackbg,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        height: 60,
                        width: 350,
                        child: Center(
                          child: Text(
                            "Set",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: whitebg,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
