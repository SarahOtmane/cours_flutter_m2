import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _operation = '+';
  String _result = '';

  void _calculate() {
    final num1 = num.tryParse(_controller1.text);
    final num2 = num.tryParse(_controller2.text);
    if (num1 == null || num2 == null) {
      setState(() {
        _result = 'Veuillez entrer deux nombres valides';
      });
      return;
    }
    num res;
    switch (_operation) {
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: '456',
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                ),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: '6',
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                ),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Radio<String>(
                      value: '+',
                      groupValue: _operation,
                      onChanged: (value) {
                        setState(() {
                          _operation = value!;
                        });
                      },
                    ),
                    const Text('Addition', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Radio<String>(
                      value: '-',
                      groupValue: _operation,
                      onChanged: (value) {
                        setState(() {
                          _operation = value!;
                        });
                      },
                    ),
                    const Text('Soustraction', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Radio<String>(
                      value: '×',
                      groupValue: _operation,
                      onChanged: (value) {
                        setState(() {
                          _operation = value!;
                        });
                      },
                    ),
                    const Text('Multiplication',
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Radio<String>(
                      value: '÷',
                      groupValue: _operation,
                      onChanged: (value) {
                        setState(() {
                          _operation = value!;
                        });
                      },
                    ),
                    const Text('Division', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _calculate,
              child: const Text('Calculer'),
            ),
            const SizedBox(height: 16),
            if (_result.isNotEmpty)
              Text(
                _result,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
