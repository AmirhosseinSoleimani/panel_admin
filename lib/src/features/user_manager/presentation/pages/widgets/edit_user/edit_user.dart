import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:admin_panel/src/shared/ui_kits/ui_kits.dart';
import 'package:flutter/material.dart';

class EditUser extends StatefulWidget {
  const EditUser({super.key, required this.userName, required this.firstName, required this.lastName, required this.email, required this.gender});
  final String userName;
  final String firstName;
  final String lastName;
  final String email;
  final String gender;


  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final Map<String, String> items = {
    'Male': '1',
    'Female': '2',
    'Another': '3',
  };

  String? selectedKey;
  @override
  void initState() {
    selectedKey = widget.gender;
    userNameController.text = widget.userName;
    firstNameController.text = widget.firstName;
    lastNameController.text = widget.lastName;
    emailController.text = widget.email;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  content: Column(
                    children: [
                      Space.h16,
                      ACTextFormField(controller: userNameController, hintText: 'User Name'),
                      Space.h16,
                      ACTextFormField(controller: firstNameController, hintText: 'First Name'),
                      Space.h16,
                      ACTextFormField(controller: lastNameController, hintText: 'Last Name'),
                      Space.h16,
                      ACTextFormField(
                        controller: emailController,
                        hintText: 'Email',
                      ),
                      Space.h16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              hint: Text('Select an Item', style: Theme.of(context).textTheme.bodyMedium,),
                              value: selectedKey,
                              items: items.keys.map((String key) {
                                return DropdownMenuItem<String>(
                                  value: key,
                                  child: Text(key),
                                );
                              }).toList(),
                              onChanged: (String? newKey) {
                                setState(() {
                                  selectedKey = newKey;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: AppSize.s60,
                                  height: AppSize.s60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).colorScheme.secondaryContainer
                                  ),
                                  child: const Center(
                                    child: Icon(
                                        IconManager.add
                                    ),
                                  ),
                                ),
                                const Text('َAdd Photo'),
                              ],
                            ),
                          )
                        ],
                      ),
                      ACElevatedButton(
                        onTap: () {},
                        title: 'Edit User',
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: Icon(IconManager.pen, size: AppSize.s24, color: Theme.of(context).colorScheme.primary,),
    );
  }
}