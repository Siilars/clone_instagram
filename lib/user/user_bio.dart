import 'package:clone_instagram/conts/colors.dart';
import 'package:flutter/material.dart';

class UserBio extends StatelessWidget {
  final String userName;
  final String city;
  final String userBio;
  const UserBio({Key? key, required this.userName, required this.city, required this.userBio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonText = TextStyle(fontSize: 16, color: AppColor.black);
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              userName,
              style: buttonText,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              city,
              style: buttonText,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              userBio,
              style: buttonText,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Editar Perfil'),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Transform.rotate(
                      angle: 3.14 * 1.5,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
