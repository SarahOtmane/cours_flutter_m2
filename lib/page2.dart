import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void _calculate(String operation) {
    final num1 = num.tryParse(_controller1.text);
    final num2 = num.tryParse(_controller2.text);
    if (num1 == null || num2 == null) {
      setState(() {
        _result = 'Veuillez entrer deux nombres valides';
      });
      return;
    }
    num res;
    switch (operation) {
      case '+':
        res = num1 + num2;
        break;
      case '-':
        res = num1 - num2;
        break;
      case '×':
        res = num1 * num2;
        break;
      case '÷':
        if (num2 == 0) {
          setState(() {
            _result = 'Division par zéro impossible';
          });
          return;
        }
        res = num1 / num2;
        break;
      default:
        res = 0;
    }
    setState(() {
      _result = 'Résultat : $res';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller1,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Nombre 1',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _controller2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Nombre 2',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => _calculate('+'),
                child: const Text('+'),
              ),
              ElevatedButton(
                onPressed: () => _calculate('-'),
                child: const Text('-'),
              ),
              ElevatedButton(
                onPressed: () => _calculate('×'),
                child: const Text('×'),
              ),
              ElevatedButton(
                onPressed: () => _calculate('÷'),
                child: const Text('÷'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            _result,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
