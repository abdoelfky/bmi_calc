import 'dart:math';

import 'package:bmi_calc/resultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool isMale=true;
  double height=120.0;
  double weight=60;
  int age=18;
  double result;


  void selectScreen(BuildContext ctx,int n ){
    Navigator.of(ctx).push(MaterialPageRoute(
        builder:(_){
          if(n==1)return resultScreen(isMale:isMale ,result:result,age:age ,);
          return homeScreen();
        }
    ));


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontWeight:FontWeight.bold ,
              fontSize: 30.0,
            ),
        ),
          ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale?Colors.lightBlue:Colors.grey[400] ,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children :[
                              Image(
                                image:AssetImage('images/male.png',),
                                height:80.0 ,
                                width:80.0 ,

                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                'Male',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                              ),)
                            ]
                          ),
                        ),
                    ),
                    ),
                  //Male
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0) ,
                          color:!isMale?Colors.lightBlue: Colors.grey[400],
                        ),
                        child: Center(
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                                children :[
                                  Image(
                                      image:AssetImage(
                                        'images/female.png',
                                      ) ,
                                    height:80.0 ,
                                    width:80.0,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold
                                    ),)
                                ]
                            ),
                          ),
                        ),
                    ),
                    ),
                  //Female
        ],
          ),
            )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 3.0,),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16.0
                          ),
                          child: Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged:(value){
                          setState(() {
                            height=value;
                          });
                        })

                  ],
                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 35.0,
                              fontWeight:FontWeight.w900 ,
                            ),

                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 35.0,
                              fontWeight:FontWeight.w900 ,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  mini:true,
                                  child: Icon(Icons.remove),
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                heroTag: 'weight-',
                              ),
                              FloatingActionButton(
                                  mini: true,
                                  child: Icon(Icons.add),
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                heroTag: 'weight+',
                              ),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 35.0,
                              fontWeight:FontWeight.w900 ,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 35.0,
                              fontWeight:FontWeight.w900 ,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  mini:true,
                                  child: Icon(Icons.remove),
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                heroTag: 'Age-',
                              ),
                              FloatingActionButton(
                                  mini: true,
                                  child: Icon(Icons.add),
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                heroTag: 'age+',
                              ),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: MaterialButton(
                onPressed: (){
                  result = weight/pow(height/100,2);
                  selectScreen(context, 1);
                },
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),

            ),
          ),

        ],
      ),


          );
  }
}
