import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Option 1';
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('ElevatedButton'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: const Text('TextButton'),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {},
            child: const Text('OutlinedButton'),
          ),
          const SizedBox(height: 32),
          const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 82,
          ),
          const SizedBox(height: 16),
          StatefulBuilder(
            builder: (context, setState) {
              String? selectedValue = dropdownValue == 'Option 1' ||
                      dropdownValue == 'Option 2' ||
                      dropdownValue == 'Option 3'
                  ? dropdownValue
                  : null;
              return DropdownButton<String>(
                value: selectedValue,
                items: <String>['Option 1', 'Option 2', 'Option 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  }
                },
              );
            },
          ),
          const SizedBox(height: 16),
          CupertinoButton(
            color: Colors.blue,
            onPressed: () {},
            child: const Text('CupertinoButton'),
          ),
        ],
      ),
    );
  }
}
