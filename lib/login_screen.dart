
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,  // مش هتشتغل علشان عملت اسكرول فيو فهوي حاليا مش عارف طول الشاشة
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,

                    ),
                    //textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 40,),
                  TextFormField(
                    controller: emailController,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){
                      print(value);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(  // عمل صندوق فاضي تستخدم مع ال column
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,   // اقدر اتحكم في اللي جواها
                    onFieldSubmitted: (value){    // اطلع القيمة اللي جواها لما اضغط submit
                      print(value);
                    },
                    onChanged: (value){    // اقدر اطلع القيمة اللي جواها وانا بعمل تغيير فيه
                      print(value);
                    },
                    keyboardType: TextInputType.visiblePassword,  // تستخدم للفليديشن والتسهيل علي المستخدم
                    obscureText: true,   // تستخدم لعمل النص نجوم
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),  // لعمل اطار له
                      prefixIcon: Icon(  // ايقون في البداية
                        Icons.lock,
                      ),
                      suffixIcon: Icon(   // ايقون في النهاية
                        Icons.remove_red_eye,
                      ),
                      labelText: 'Password',   // اسم يوضح الحقل تدخل فيه ايه وفي حاجة تانية اسمها hint text

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(   // زرار
                      color: Colors.blue,
                      onPressed: (){
                        print(emailController.text);
                        print(passwordController.text);
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                          onPressed: (){},
                          child: Text(
                            'Register Now',
                          ),
                      ),
                    ],
                  ),
              ]
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
