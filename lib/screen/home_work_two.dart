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
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Container(
              width: size.width,
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: size.height / 8,
                    width: size.width / 3,
                  ),
                  const InputHeading(title: "BdCalling Acadamy")
                ],
              ),
            )),
            const SizedBox(
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: InputHeading(title: "Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.notification_add),
                    title: InputHeading(title: "Notification"),
                  ),
                  ListTile(
                    leading: Icon(Icons.policy),
                    title: InputHeading(title: "Privacy & Pollicy"),
                  ),
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title: InputHeading(title: "Feedback & Support"),
                  ),
                  ListTile(
                    leading: Icon(Icons.room_preferences_sharp),
                    title: InputHeading(title: "Course Preferences"),
                  ),
                  ListTile(
                    leading: Icon(Icons.update),
                    title: InputHeading(title: "Update"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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

              // i have taken here Gender========================
              const InputHeading(title: "Gender :"),
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: RadioListTile<String>(
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("NodJs"),
                            value: "NodeJs",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("3D/2d"),
                            value: "3D/2d",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
                            title: const Text("GetX"),
                            value: "Getx",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            fillColor:
                                const WidgetStatePropertyAll(Colors.blue),
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
                children: [
                  const InputHeading(title: "Address :"),
                  Card(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * .02),
                      child: Row(
                        children: [
                          Center(
                            child: Text(dorpDownValue.toString()),
                          ),
                          PopupMenuButton(
                              onSelected: (value) {
                                setState(() {
                                  dorpDownValue = value;
                                });
                              },
                              icon: const Icon(
                                  Icons.arrow_drop_down_circle_outlined),
                              itemBuilder: (BuildContext context) => [
                                    const PopupMenuItem<String>(
                                      value: 'Dinajpur',
                                      child: Text('Dinajpur'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'Dhaka',
                                      child: Text('Dhaka'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'Bagura',
                                      child: Text('Bagura'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'Tangail',
                                      child: Text('Tangail'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'Banasree',
                                      child: Text('Banasree'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'Mirpur',
                                      child: Text('Mirpur'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'Thakurgaon',
                                      child: Text('Thakurgaon'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'Rangpur',
                                      child: Text('Rangpur'),
                                    ),
                                  ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .03,
              ),
              SizedBox(
                width: size.width,
                height: size.height * .08,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                        overlayColor:
                            WidgetStatePropertyAll(Color(0xC48DC4F1))),
                    onPressed: () {},
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
              SizedBox(
                height: size.height * .05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
