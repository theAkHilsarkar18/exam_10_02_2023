import 'package:exam_10_02_2023/modelClass.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List studentId = ["1111"];
  List studentName = ["Raj"];
  List studentStd = ["Rajkot"];


  TextEditingController editId = TextEditingController();
  TextEditingController editName = TextEditingController();
  TextEditingController editStandard = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text("StudentS",style: TextStyle(letterSpacing: 2,color: Colors.white)),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      box(studentName[index], studentId[index],
                          studentStd[index], index),

                    ],
                  );
                },
                itemCount: studentName.length,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 50, right: 30),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        alignment: Alignment.center,
                        content: SizedBox(
                          height: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextField(
                                controller : editId,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green,width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green,width: 2),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green,width: 2)
                                  ),


                                  //
                                  icon: Icon(Icons.numbers,color: Colors.green,),
                                  label: Text("Id",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.w500),),

                                ),

                              ),
                              TextField(
                                controller : editName,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green,width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green,width: 2),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green,width: 2)
                                  ),


                                  //
                                  icon: Icon(Icons.person_outline,color: Colors.green,),
                                  label: Text("Student Name",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.w500),),

                                ),

                              ),
                              TextField(
                                controller : editStandard,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green,width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green,width: 2),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green,width: 2)
                                  ),


                                  //
                                  icon: Icon(Icons.school_outlined,color: Colors.green,),
                                  label: Text("Standard",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.w500),),

                                ),

                              ),

                              SizedBox(height: 10,),


                              InkWell(
                                onTap: () {
                                  setState(() {

                                    studentId.add(editId.text);
                                    studentName.add(editName.text);
                                    studentStd.add(editStandard.text);
                                    Navigator.pop(context);
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.green,width: 2),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text("Add",style: TextStyle(color: Colors.green,letterSpacing: 2)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },);
                  },
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
/////////////////////////////////////////////


  Widget box(String name, String id, String std, int i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("${id}",
                style: TextStyle(
                    color: Colors.green.shade700, fontWeight: FontWeight.bold)),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${name}",
                    style: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2)),
                SizedBox(
                  height: 2,
                ),
                Text("${std}",
                    style: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2)),
              ],
            ),
            Spacer(),
            InkWell(
                onTap: () {
                  showDialog(context: context, builder:
                      (context) {
                    return AlertDialog(
                      alignment: Alignment.center,
                      content: SizedBox(
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextField(
                              controller : editId,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green,width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green,width: 2),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green,width: 2)
                                ),


                                //
                                icon: Icon(Icons.numbers,color: Colors.green,),
                                label: Text("Id",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.w500),),

                              ),

                            ),
                            TextField(
                              controller : editName,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green,width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green,width: 2),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green,width: 2)
                                ),


                                //
                                icon: Icon(Icons.person_outline,color: Colors.green,),
                                label: Text("Student Name",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.w500),),

                              ),

                            ),
                            TextField(
                              controller : editStandard,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green,width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green,width: 2),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green,width: 2)
                                ),


                                //
                                icon: Icon(Icons.school_outlined,color: Colors.green,),
                                label: Text("Standard",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.w500),),

                              ),

                            ),

                            SizedBox(height: 10,),


                            InkWell(
                               onTap: () {
                                 setState(() {

                                   studentName[i] = editName.text;
                                   studentId[i] = editId.text;
                                   studentStd[i] = editStandard.text;
                                   Navigator.pop(context);
                                 });
                               },
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.green,width: 2),
                                ),
                                alignment: Alignment.center,
                                child: Text("Update",style: TextStyle(color: Colors.green,letterSpacing: 2)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                      },
                  );

                },
                child: Icon(Icons.edit, color: Colors.green.shade700)),
            SizedBox(
              width: 20,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    studentName.removeAt(i);
                  });
                },
                child: Icon(Icons.delete, color: Colors.green.shade700)),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
