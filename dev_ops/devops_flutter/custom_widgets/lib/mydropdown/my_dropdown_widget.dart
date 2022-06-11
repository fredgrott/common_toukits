// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';

class MyDropdownWidget extends StatefulWidget {
  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  String dropdownValue = 'system';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      // ignore: prefer-extracting-callbacks
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue as String;
        });
      },
      items: const [
        DropdownMenuItem(
          value: 'system',
          child: Text('System Theme'),
        ),
        DropdownMenuItem(
          value: 'light',
          child: Text('Light Theme'),
        ),
        DropdownMenuItem(
          value: 'dark',
          child: Text('Dark Theme'),
        ),


      ],
    );
  }
}
