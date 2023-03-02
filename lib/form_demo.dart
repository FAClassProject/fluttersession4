import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Aptech Form Field Session 4", style: TextStyle(color: Colors.green, fontSize: 20),),
                      SizedBox(height: 40,),
                      TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Please insert a value';
                          }else{
                           return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Enter your name',
                          labelText: 'name'
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if(value == null || value.isEmpty){
                             return 'Please enter a valid dob';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Enter your phone Number',
                            labelText: 'Phone number'
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextFormField(

                        validator: (value) {
                           if(value == null || value.isEmpty){
                              return 'Please enter a value';
                           }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Enter your DOB',
                            labelText: 'DOB'
                        ),
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Container(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape:MaterialStatePropertyAll(RoundedRectangleBorder())
                            ),
                              onPressed: (){
                                if(_formKey.currentState!.validate()){
                                  // If the form is valid display a snack bar
                                 ScaffoldMessenger.of(context).showSnackBar
                                   (SnackBar(content: Text('Data is Processing')));
                                }
                              },
                              child: Text("Submit")),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.symmetric(),

                          ),
                        ),
                      )
                    ],
                    
                    
                  )),
            ),
          ),
        );
  }
}
