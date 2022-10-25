import 'package:flutter/foundation.dart';

class Transacao {
  final String id;
  final String title;
  final double amout;
  final DateTime date;
  Transacao(@required this.id, this.title, this.amout, this.date);
}
