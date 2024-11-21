import 'package:dana_copy/MenuBottom.dart';
import 'package:flutter/material.dart';

class Aktivitasview extends StatelessWidget {
  const Aktivitasview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Menubottom(1),
    );
  }
}
