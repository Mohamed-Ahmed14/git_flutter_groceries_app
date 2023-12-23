import 'package:flutter/material.dart';
import 'package:solution_sheet_7/account_model.dart';

class AccountWidget extends StatelessWidget {
  final Options option;
  const AccountWidget({required this.option,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 1,color:Color(0xffF2F3F2),),
        SizedBox(height: 3,),
        Row(
          children: [
              Image.asset(option.image??"",),
            SizedBox(width: 20,),
            Expanded(child: Text(option.name??"",style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),)),
            Icon(Icons.arrow_forward_ios_outlined,size: 16,color: Colors.black,),
          ],
        ),
      ],
    );
  }
}
