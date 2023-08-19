import 'package:uuid/uuid.dart';

const uuid = Uuid();

// note: In Dart, "Initializer Lists" can be used to initialize class properties (like "id")
// with values that are not received as constructor function arguments
class Expense {
  Expense({required this.title, required this.amount, required this.date}) : id = uuid.v4();
  
  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
