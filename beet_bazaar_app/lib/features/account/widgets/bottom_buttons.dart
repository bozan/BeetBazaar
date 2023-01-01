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
      key: const Key('bottomButtonsCol'),
      children: [
        Row(
          key: const Key('bottomButtonsColRow'),
          children: [
            Container(
              padding: EdgeInsets.only(top: height / 7, left: width / 4),
              child: Column(
                key: const Key('bottomButtonsColRowCol'),
                children: [
                  DeleteUserButton(
                    key: const Key('bottomButtonsLogoutButton'),
                    text: 'Log Out',
                    onTap: () => AccountServices().logOut(context),
                  ),
                  const SizedBox(
                      key: Key('bottomButtonsColRowColSizedBox'), height: 10),
                  DeleteUserButton(
                    key: const Key('bottomButtonsDeleteButton'),
                    text: 'Delete Account',
                    onTap: () => AccountServices().deleteUser(context),
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
