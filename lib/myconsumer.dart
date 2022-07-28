// import 'package:flutter/material.dart';
// import 'package:flutter_application_17/textfield.dart';
// import 'package:provider/provider.dart';

// import 'modelsofprovider.dart';

// class MyConsumer extends StatelessWidget {
//   final provider;
//   ChangeNotifier modelOfProvider;
//     MyConsumer({Key? key, required this.provider, required this.modelOfProvider}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         MyTextField(provider: provider),
//         Consumer<modelOfProvider>(
//           builder: (_, value, __) => Text(
//             "Text1 of $provider: ${provider.value}",
//           ),
//         ),
//       ],
//     );
//   }
// }
