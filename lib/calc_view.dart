import 'package:basic_calculator_1/calc_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(children: [
        Center(
          child: BlocBuilder<CalculatorController, List<String>>(
              builder: (context, state) => Center(child: Text(state.join()))),
        ),
        Row(children: [
          ElevatedButton(
              onPressed: () => context.read<CalculatorController>().clear(),
              child: const Text('C')),
          ElevatedButton(
              onPressed: () =>
                  context.read<CalculatorController>().addOpeningParenthesis(),
              child: const Text('(')),
          ElevatedButton(
              onPressed: () =>
                  context.read<CalculatorController>().addClosingParenthesis(),
              child: const Text(')')),
          ElevatedButton(
              onPressed: () => context.read<CalculatorController>().divide(),
              child: const Text('/')),
        ]),
        Row(
          children: [
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('7'),
                child: const Text('7')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('8'),
                child: const Text('8')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('9'),
                child: const Text('9')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().multiply(),
                child: const Text('X')),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('4'),
                child: const Text('4')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('5'),
                child: const Text('5')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('6'),
                child: const Text('6')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().subtract(),
                child: const Text('-')),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('1'),
                child: const Text('1')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('2'),
                child: const Text('2')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('3'),
                child: const Text('3')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().add(),
                child: const Text('+')),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addDecimal(),
                child: const Text('.')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().addNumber('0'),
                child: const Text('0')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().delete(),
                child: const Text('DEL')),
            ElevatedButton(
                onPressed: () =>
                    context.read<CalculatorController>().calculate(),
                child: const Text('='))
          ],
        )
      ]),
    );
  }
}
