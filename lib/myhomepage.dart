import 'package:flutter/material.dart';
import 'package:flutter_application_17/textfield.dart';
import 'package:provider/provider.dart';

import 'modelsofprovider.dart';

class MyHomePage extends  StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
  final provider1 = Provider.of<ModelOfProvider1>(context, listen: false);
  final provider2 = Provider.of<ModelOfProvider2>(context, listen: false);
  final provider3 = Provider.of<ModelOfProvider3>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
    
        title: Text("My Homepage"),
      ),
      body: Center(
        child: Column(
 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            MyTextField(provider: provider1),
            Consumer<ModelOfProvider1>(
              builder: (_, value, __) => Text("Text1 of $provider1: ${provider1.value}",
              ),
              ),
            
          const SizedBox(height: 50),

            MyTextField(provider: provider2),
            Consumer<ModelOfProvider2>(
              builder: (_, value, __) => Text("Text1 of $provider2: ${provider2.value}",
              ),
              ),
            

            const SizedBox(height: 50),

            MyTextField(provider: provider3),
            Consumer<ModelOfProvider3>(
              builder: (_, value, __) => Text("Text1 of $provider3: ${provider3.value}",
              ),
              ),

          ],
        ),
      ),
       
    );
  }
}
