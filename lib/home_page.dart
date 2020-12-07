import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedValue = 'Otro';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('-- DropDown --'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Center(
                child: DropdownButton<String>(
                  value: _selectedValue,
                  style: TextStyle(color: Colors.black),
                  items: <String>[
                    'Hombre',
                    'Mujer',
                    'Otro',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(
                    "Sexo",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
