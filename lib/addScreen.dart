import 'package:exam_10_02_2023/modelClass.dart';
import 'package:flutter/material.dart';

class Addscreen extends StatefulWidget {
  const Addscreen({Key? key}) : super(key: key);

  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {


  TextEditingController editId = TextEditingController();
  TextEditingController editName = TextEditingController();
  TextEditingController editStandard = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: editId,
                  decoration: InputDecoration(
                    label: Text("Student Id",style: TextStyle(color: Colors.green,letterSpacing: 2,fontSize: 16)),
                    icon: Icon(Icons.numbers,color: Colors.green),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade700,width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green,width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 1.5,color: Colors.green)),
                  ),
                ),
              ),

              SizedBox(height:10 ,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: editName,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person_outline,color: Colors.green),
                    label: Text("Student Name",style: TextStyle(color: Colors.green,fontSize: 16,letterSpacing: 2)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade700,width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green,width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 2,color: Colors.green)),
                  ),
                ),
              ),
              SizedBox(height:10 ,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: editStandard,
                  decoration: InputDecoration(
                    label: Text("Standard",style: TextStyle(color: Colors.green,letterSpacing: 2,fontSize: 16)),
                    icon: Icon(Icons.school,color: Colors.green),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade700,width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green,width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 1.5,color: Colors.green)),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              //
              //
              //

              InkWell(
                onTap: () {

                  setState(() {

                    Modeldata add = Modeldata(stId: "${editId.text}",stName: "${editName.text}",stStd: "${editStandard.text}");
                    Navigator.pop(context);

                  });
                },
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // gradient: LinearGradient(
                    //   colors: [
                    //     Colors.green,
                    //     Colors.green.shade800,
                    //   ],
                    // ),
                    border: Border.all(width: 2,color: Colors.green),
                  ),
                  alignment: Alignment.center,
                  child: Text("Save",style: TextStyle(color:Colors.green,fontSize: 18,letterSpacing: 2)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
