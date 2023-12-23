import 'package:flutter/material.dart';
import 'package:solution_sheet_7/search_screen.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.close,size: 20,color: Colors.black,)),
        centerTitle: true,
        title: Text("Filters",style: TextStyle(
          color: Color(0xff181725),
          fontSize: 20,
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
          color: Color(0xffF2F3F2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Categories",style: TextStyle(
                color: Color(0xff181725),
                fontSize: 24,
              ),),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) => false,
                  fillColor:MaterialStateProperty.resolveWith((states) =>Color(0xff53B175)),
                  ),
                  Text("Eggs",style: TextStyle(
                    color: Color(0xff53B175),
                    fontSize: 16,
                  ),),

                ],
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) => true,
                    fillColor:MaterialStateProperty.resolveWith((states) =>Color(0xffffffff)),
                    side: BorderSide(
                      color: Color(0xffB1B1B1),
                    ),
                  ),
                  Text("Noodles & Pasta",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                  ),),

                ],
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) => true,
                    fillColor:MaterialStateProperty.resolveWith((states) =>Color(0xffffffff)),
                    side: BorderSide(
                      color: Color(0xffB1B1B1),
                    ),
                  ),
                  Text("Chips & Crisps",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                  ),),

                ],
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) => true,
                    fillColor:MaterialStateProperty.resolveWith((states) =>Color(0xffffffff)),
                    side: BorderSide(
                      color: Color(0xffB1B1B1),
                    ),
                  ),
                  Text("Fast Food",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                  ),),

                ],
              ),

              Text("Brand",style: TextStyle(
                color: Color(0xff181725),
                fontSize: 24,
              ),),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) => true,
                    fillColor:MaterialStateProperty.resolveWith((states) =>Color(0xffffffff)),
                    side: BorderSide(
                      color: Color(0xffB1B1B1),
                    ),
                  ),
                  Text("Individual Callection",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                  ),),

                ],
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) => false,
                    fillColor:MaterialStateProperty.resolveWith((states) =>Color(0xff53B175)),
                  ),
                  Text("Cocola",style: TextStyle(
                    color: Color(0xff53B175),
                    fontSize: 16,
                  ),),

                ],
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) => true,
                    fillColor:MaterialStateProperty.resolveWith((states) =>Color(0xffffffff)),
                    side: BorderSide(
                      color: Color(0xffB1B1B1),
                    ),
                  ),
                  Text("Ifad",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                  ),),

                ],
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) => true,
                    fillColor:MaterialStateProperty.resolveWith((states) =>Color(0xffffffff)),
                    side: BorderSide(
                      color: Color(0xffB1B1B1),
                    ),
                  ),
                  Text("Kazi Farmas",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                  ),),

                ],
              ),
              Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(360, 60),
                    backgroundColor: Color(0xff53B175),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SearchScreen();
                    },));
                  },
                  child: Text("Apply Filter",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,

                  ),)),
            ],
          ),
        ),
      ),
    );
  }
}
