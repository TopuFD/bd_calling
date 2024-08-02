import 'package:flutter/material.dart';
import 'package:mytodo/widget/custom_text_field.dart';
import 'package:mytodo/widget/input_heading.dart';

class HomeWorkTwo extends StatefulWidget {
  const HomeWorkTwo({super.key});

  @override
  State<HomeWorkTwo> createState() => _HomeWorkTwoState();
}

class _HomeWorkTwoState extends State<HomeWorkTwo> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailNameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  String? _value;
  String dorpDownValue = "Thakurgaon";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admission Form"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InputHeading(title: "First Name : "),
              const SizedBox(height: 3),
              CustomTextField(
                controller: firstNameController.text,
                hintText: "Write first name",
                labelText: "First Name",
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 8),
              const InputHeading(title: "Last Name :"),
              const SizedBox(height: 3),
              CustomTextField(
                controller: lastNameController.text,
                hintText: "Write last name",
                labelText: "Last Name",
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 8),
              const InputHeading(title: "Email Name :"),
              const SizedBox(height: 3),
              CustomTextField(
                controller: emailNameController.text,
                hintText: "Write your email",
                labelText: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 5),
              const InputHeading(title: "Phone :"),
              const SizedBox(height: 3),
              CustomTextField(
                controller: numberController.text,
                hintText: "Write phone number",
                labelText: "Phone",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              //  i have taken here Date of Birth====================

              // i have taken here Gender========================
              const InputHeading(title: "Gender :"),
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("Male"),
                            value: "Male",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("Female"),
                            value: "Female",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    RadioListTile<String>(
                      fillColor: const WidgetStatePropertyAll(Colors.blue),
                      title: const Text("Custom"),
                      value: "Custom",
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              // i have take here all the courses
              const InputHeading(title: "Courses"),
              const SizedBox(
                height: 8,
              ),
              Card(
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("Java"),
                            value: "Java",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("JavaScript"),
                            value: "JavaScript",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("Python"),
                            value: "Python",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("Dart"),
                            value: "Dart",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("Flutter"),
                            value: "Flutter",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("swipt"),
                            value: "swipt",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("MERN"),
                            value: "mern",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("WordPress"),
                            value: "wordpress",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("Graphics"),
                            value: "Graphics",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor: const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("Kotlin"),
                            value: "Kotlin",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const InputHeading(title: "Address :"),
                  Card(
                    child: Center(
                      child: Text(dorpDownValue.toString()),
                    ),
                  ),
                  PopupMenuButton(
                      onSelected: (value) {
                        setState(() {
                          dorpDownValue = value;
                        });
                      },
                      icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                      itemBuilder: (BuildContext context) => [
                            const PopupMenuItem<String>(
                              value: 'Dinajpur',
                              child: Text('Dinajpur'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Thakurgaon',
                              child: Text('Thakurgaon'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Rangpur',
                              child: Text('Rangpur'),
                            ),
                          ])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
