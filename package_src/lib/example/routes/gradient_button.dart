import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';

class GradientButtonRoute extends StatelessWidget {
  const GradientButtonRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GradientButton(
          colors: const [Colors.orange, Colors.red],
          onPressed: onTap,
          child: const Text("Submit"),
        ),
        ElevatedGradientButton(
          colors: const [Colors.orange, Colors.red],
          onPressed: onTap,
          child: const Text("Submit"),
        ),
        GradientButton(
          onPressed: onTap,
          borderRadius: BorderRadius.circular(30),
          child: const Text("Submit"),
        ),
        ElevatedGradientButton(
          onPressed: onTap,
          borderRadius: BorderRadius.circular(30),
          child: const Text("Submit"),
        ),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: GradientButton(
            colors: [Colors.lightGreen, Colors.green.shade700],
            onPressed: onTap,
            child: const Text("Submit"),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedGradientButton(
            colors: [Colors.lightGreen, Colors.green.shade700],
            onPressed: onTap,
            child: const Text("Submit"),
          ),
        ),
        const ElevatedGradientButton(
          child: Text("Submit"),
          //onPressed: onTap,
        ),
      ].map((e) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: e,
        );
      }).toList(),
    );
  }

  onTap() {
    debugPrint("button click");
  }
}
