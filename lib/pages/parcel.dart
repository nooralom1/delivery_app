import 'package:flutter/material.dart';


class ParcelPage extends StatefulWidget {
  const ParcelPage({super.key});

  @override
  State<ParcelPage> createState() => _ParcelPageState();
}

class _ParcelPageState extends State<ParcelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Parcel"),
        centerTitle: true,),
      body: const Center(
        child: Text(
          "Working........",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
}
