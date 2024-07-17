import 'package:flutter/material.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Payment"),
        centerTitle: true,),
      body: const Center(
        child: Text(
          "Working........",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
}
