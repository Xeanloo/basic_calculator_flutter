import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends Cubit<List<String>> {
  CalculatorController() : super([]);

  String removeDecimalZeroFormat(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
  }

  void add() => emit([...state, '+']);
  void subtract() => emit([...state, '-']);
  void multiply() => emit([...state, '*']);
  void divide() => emit([...state, '/']);
  void clear() => emit(const []);
  void delete() =>
      {if (state.isNotEmpty) emit(state.sublist(0, state.length - 1))};
  void addNumber(String number) => emit([...state, number]);
  void calculate() {
    final expression = state.join();
    final parser = Parser();
    final result = parser.parse(expression);
    final resultValue = result.evaluate(EvaluationType.REAL, ContextModel());
    emit([removeDecimalZeroFormat(resultValue)]);
  }

  void addDecimal() => emit([...state, '.']);
  void addOpeningParenthesis() => emit([...state, '(']);
  void addClosingParenthesis() => emit([...state, ')']);
}
