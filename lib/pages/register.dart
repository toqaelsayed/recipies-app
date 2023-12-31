import 'package:flutter/material.dart';
import 'package:recipies/pages/home.dart';
import 'package:recipies/services/prefrences.pages.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  late GlobalKey<FormState> fromKey;

  bool obsecureText = true;
  @override
  void initState() {
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    fromKey = GlobalKey<FormState>();
    super.initState();
  }
  void toggleObsecure() {
    obsecureText = !obsecureText;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/splash.jpg"),
          fit: BoxFit.cover,
        )),
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Image.asset(
                "assets/logo.png",
                width: 200,
              ),
              SizedBox(height: 15),
              Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
              Container(
                child: Form(
                  key: fromKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("UserName"),
                          suffixIcon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.name,
                        controller: usernameController,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "username required";
                          }
                        },
                      ),
                      TextFormField(
                          decoration: const InputDecoration(
                            label: Text('Email'),
                            suffixIcon: Icon(Icons.email),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'email is required';
                            }
                            // if (!EmailValidator.validate(value)) {
                            //   return 'Not Valid Email';
                            // }
                            return null;
                          }),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                              label: const Text('Password'),
                              suffixIcon: InkWell(
                                onTap: () => toggleObsecure(),
                                child: Icon(obsecureText
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              )),
                          obscureText: obsecureText,
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'password is required';
                            }
                            if (value.length < 6) {
                              return 'password too short';
                            }
                            return null;
                          }),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(250, 50),
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(horizontal: 15)),
                          child: const Text("Register",
                              style: TextStyle(color: Colors.white))),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
