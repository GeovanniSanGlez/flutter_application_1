import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
          image: const AssetImage("assets/images/APCEC.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              myColor.withOpacity(0.2), BlendMode.dstATop),
        ),
      ), 
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(top: 80, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBotton())
      ]),
    ), 
  );
}

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.amp_stories_rounded,
            size: 100,
            color: Colors.white,
          ),
          Text(
            "INV CATAL",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize:  40,
                letterSpacing: 2),
          )
        ],
      ),
    );
  }

  Widget _buildBotton(){
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(29),
            topRight: Radius.circular(29),
          )),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: _buildForm(),
          ),
      ),
    );
  }

  Widget _buildForm(){
     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "BIENVENIDO",
          style: TextStyle(
              color: myColor, fontSize: 32, fontWeight: FontWeight.w500),
        
        ),
        const SizedBox(height: 60),
        _buildGreyText("Email"),
        _buildInputField(emailController),
        const SizedBox(height: 40),
        _buildGreyText("Password"),
        _buildInputField(passwordController, isPassword: true),
        const SizedBox(height: 20),
        _buildRememberForgot(),
        const SizedBox(height: 20),
        _buildLoginButton(),
          const SizedBox(height: 20),
        _buildOtherLogin(),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }
  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isPassword ? const Icon(Icons.remove_red_eye) : const Icon(Icons.account_circle_sharp),
      ),
      obscureText: isPassword,
    );
  }
  
   Widget _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: rememberUser,
                onChanged: (value) {
                  setState(() {
                    rememberUser = value!;
                  });
                }),
            _buildGreyText("Recordar datos"),
          ],
        ),
        TextButton(
            onPressed: () {}, child: _buildGreyText("Olvide mi CONTRACEÑA "))
      ],
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Email : ${emailController.text}");
        debugPrint("Password : ${passwordController.text}");
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(40),
      ),
      child: const Text("LOGIN"),
    );
  }
  Widget _buildOtherLogin() {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("No tienes una cuenta?"),
        Text("Registrate aqui", style: TextStyle(color: Colors.blueAccent)),
      ],
    );
  }

}




