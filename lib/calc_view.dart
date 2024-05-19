import 'package:basic_calculator_1/calc_controller.dart';
import 'package:basic_calculator_1/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello Calculator!',
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: BlocBuilder<CalculatorController, List<String>>(
              builder: (context, state) => Text(
                    state.join(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.right,
                    // textDirection: TextDirection.ltr,
                  )),
        ),
        const SizedBox(height: 16),
        ButtonRow(
          children: [
            CustomButton(
              onTap: () => context.read<CalculatorController>().clear(),
              buttonText: 'C',
              customStyle: delButtonStyle,
            ),
            CustomButton(
              onTap: () =>
                  context.read<CalculatorController>().addOpeningParenthesis(),
              buttonText: ('('),
              customStyle: operatorButtonStyle,
            ),
            CustomButton(
              onTap: () =>
                  context.read<CalculatorController>().addClosingParenthesis(),
              buttonText: (')'),
              customStyle: operatorButtonStyle,
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().divide(),
              buttonText: ('/'),
              customStyle: operatorButtonStyle,
            ),
          ],
        ),
        ButtonRow(
          children: [
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('7'),
              buttonText: ('7'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('8'),
              buttonText: ('8'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('9'),
              buttonText: ('9'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().multiply(),
              buttonText: ('X'),
              customStyle: operatorButtonStyle,
            ),
          ],
        ),
        ButtonRow(
          children: [
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('4'),
              buttonText: ('4'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('5'),
              buttonText: ('5'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('6'),
              buttonText: ('6'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().subtract(),
              buttonText: ('-'),
              customStyle: operatorButtonStyle,
            ),
          ],
        ),
        ButtonRow(
          children: [
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('1'),
              buttonText: ('1'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('2'),
              buttonText: ('2'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('3'),
              buttonText: ('3'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().add(),
              buttonText: ('+'),
              customStyle: operatorButtonStyle,
            ),
          ],
        ),
        ButtonRow(
          children: [
            CustomButton(
              onTap: () => context.read<CalculatorController>().addDecimal(),
              buttonText: ('.'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().addNumber('0'),
              buttonText: ('0'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().delete(),
              buttonText: ('DEL'),
            ),
            CustomButton(
              onTap: () => context.read<CalculatorController>().calculate(),
              buttonText: ('='),
              customStyle: equalButtonStyle,
            )
          ],
        ),
      ]),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }
}
