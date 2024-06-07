import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:admin_panel/src/shared/ui_kits/ui_kits.dart';
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    final Map<String, String> items = {
      'Male': '1',
      'Female': '2',
      'Another': '3',
    };
    bool isShowPassword = false;
    String? selectedKey;
    return ACInkwellButton(
      width: AppSize.s120,
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  content: Column(
                    children: [
                      Space.h8,
                      ACTextFormField(controller: userNameController, hintText: 'User Name'),
                      Space.h8,
                      ACTextFormField(
                        controller: passwordController,
                        hintText: 'Password',
                        isPasswordField: isShowPassword,
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isShowPassword =! isShowPassword;
                            });
                          },
                          child: Icon(
                              isShowPassword ? IconManager.visibility : IconManager.visibilityOff
                          ),
                        ),
                      ),
                      Space.h8,
                      ACTextFormField(controller: firstNameController, hintText: 'First Name'),
                      Space.h8,
                      ACTextFormField(controller: lastNameController, hintText: 'Last Name'),
                      Space.h8,
                      ACTextFormField(
                        controller: emailController,
                        hintText: 'Email',
                      ),
                      Space.h8,
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
                        title: 'Add User',
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(IconManager.add),
          Text('Add User'),
        ],
      ),
    );
  }
}
