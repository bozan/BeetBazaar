import 'package:beet_bazaar_app/features/account/services/account_services.dart';
import 'package:beet_bazaar_app/features/account/widgets/delete_user_button.dart';
import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: height / 7, left: width / 4),
              child: Column(
                children: [
                  DeleteUserButton(
                    text: 'Log Out',
                    onTap: () => AccountServices().logOut(context),
                  ),
                  const SizedBox(height: 10),
                  DeleteUserButton(
                    text: 'Delete Account',
                    onTap: () => {
                      // ignore: avoid_print
                      print('account'),
                    }, //buraya basinca user sil fonksiyonu gelcek
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
