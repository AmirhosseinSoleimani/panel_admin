import 'package:admin_panel/src/shared/resources/resources.dart';
import 'package:admin_panel/src/shared/ui_kits/ui_kits.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key, required this.firstName, required this.middleName, required this.lastName, required this.email, required this.phoneNumber, required this.job, required this.birthday, required this.gender});

  final String firstName;
  final String middleName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String job;
  final String birthday;
  final String gender;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController middleNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  final Map<String, String> items = {
    'Male': '1',
    'Female': '2',
    'Another': '3',
  };
  String? selectedKey;

  @override
  void initState() {
    firstNameController.text = widget.firstName;
    middleNameController.text = widget.middleName;
    lastNameController.text = widget.lastName;
    emailController.text = widget.email;
    phoneNumberController.text = widget.phoneNumber;
    birthdayController.text = widget.birthday;
    jobController.text = widget.job;
    selectedKey = widget.gender;
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
                      Row(
                        children: [
                          Expanded(
                              child: ACTextFormField(controller: firstNameController, hintText: 'First Name'),
                          ),
                          Space.w16,
                          Expanded(child: ACTextFormField(controller: middleNameController, hintText: 'Middle Name')),
                        ],
                      ),
                      Space.h16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: ACTextFormField(controller: lastNameController, hintText: 'Last Name')),
                          Space.w16,
                          Expanded(child: ACTextFormField(controller: emailController, hintText: 'Email')),
                        ],
                      ),
                      Space.h16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: ACTextFormField(controller: phoneNumberController, hintText: 'Mobile Number')),
                          Space.w16,
                          Expanded(child: ACTextFormField(controller: birthdayController, hintText: 'Birthday')),
                        ],
                      ),
                      Space.h16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Space.w16,
                          Expanded(child: ACTextFormField(controller: jobController, hintText: 'Job')),
                        ],
                      ),
                      const Spacer(),
                      ACElevatedButton(
                        onTap: () {},
                        title: 'Save Edit',
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: Row(
        children: [
          Text('Edit', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
          Icon(IconManager.pen, size: AppSize.s24, color: Theme.of(context).colorScheme.onSecondary)
        ],
      ),
    );
  }
}
