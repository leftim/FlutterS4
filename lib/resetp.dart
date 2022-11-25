import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
        appBar: AppBar(
          title: const Text("S'authentifier"),
        ),
        body: Form(
          key: formKey,
          child: ListView(
            children: [
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Image.asset("assets/images/minecraft.jpg",
                      width: 460, height: 215)),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "username cannot be empty";
                    }
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Username"),
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: ElevatedButton(
                    child: const Text("Reintialiser mot de passe"),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      }
                    },
                  )),
            ],
          ),
        ));
  }
}
