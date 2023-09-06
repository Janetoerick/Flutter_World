import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Application"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                child: Row(
              children: [
                Text(
                  "Personal info",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            )),
            TextFormField(
              style: TextStyle(fontSize: 22),
              decoration: InputDecoration(hintText: 'First name'),
            ),
            TextFormField(
              style: TextStyle(fontSize: 22),
              decoration: const InputDecoration(hintText: 'Last name'),
            ),
            Row(
              children: [
                Flexible(
                    flex: 25,
                    child: Container(
                      child: Column(children: [
                        TextFormField(
                          style: TextStyle(fontSize: 22),
                          decoration:
                              const InputDecoration(hintText: 'Birthday'),
                        ),
                        Container(
                          child: Row(children: [Text("MM/DD/YYYY")]),
                        ),
                      ]),
                    )),
                Flexible(
                    flex: 24,
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(fontSize: 20),
                            decoration: const InputDecoration(
                                hintText: 'Social Security'),
                          ),
                          Container(
                            child: Row(
                              children: [Text("### - ## - ####")],
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
            Container(
                child: Row(
              children: [
                Text(
                  "Residence address",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            )),
            TextFormField(
              style: TextStyle(fontSize: 20),
              decoration: const InputDecoration(hintText: 'Address'),
            ),
            Row(
              children: [
                Flexible(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.only(right: 15),
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(hintText: 'City'),
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Flexible(
                      flex: 1,
                      child: DropdownButton(
                          isExpanded: true,
                          disabledHint:
                              Text("State", style: TextStyle(fontSize: 20)),
                          onChanged: null,
                          value: null,
                          items: []),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Flexible(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.only(right: 15),
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(hintText: 'ZIP Code'),
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    child: DropdownButton(
                        isExpanded: true,
                        disabledHint: Text("Country"),
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                        onChanged: null,
                        value: null,
                        items: []),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
