import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ForgetPasswordScreen extends ConsumerStatefulWidget{
  const ForgetPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends ConsumerState<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
    );
  }
}