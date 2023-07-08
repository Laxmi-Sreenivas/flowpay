import 'package:flowpay/Split/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import 'package:flowpay/Split/styles/app_layout.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/cardbg.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(21)),
          ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Group Name", style: Styles.headLineStyle1,),
                      const Spacer(),
                      Text("# Members", style: Styles.headLineStyle3,),
                    ],
                  ),
                  Gap(48),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Total Bill : ", style: Styles.headLineStyle3,),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text("Your Bill : ", style: Styles.headLineStyle3,),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("####", style: Styles.rupeeStyle,),
                      ),
                      const Spacer(),
                      Text("####", style: Styles.rupeeStyle,),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
