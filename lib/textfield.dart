import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  var tfController = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  final provider;
  MyTextField({Key? key, required this.provider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final counter = Provider.of<ModelOfProvider1>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
      child: TextField(
        controller: tfController,
        //obscureText: true,
        //  maxLength: 5,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        onChanged: (value) {
          provider.getValue(value);
        },
        decoration: InputDecoration(
          hintText: "Write something pls",
          labelText: "Textfield of $provider}",
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            // borderSide: BorderSide(color: Color.fromARGB(255, 239, 32, 32))
          ),
        ),
      ),
    );
  }
}
