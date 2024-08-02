// import 'package:flutter/material.dart';
// import 'package:mytodo/widget/custom_text_field.dart';
// import 'package:mytodo/widget/input_heading.dart';

// class HomeWorkTwo extends StatefulWidget {
//   const HomeWorkTwo({super.key});

//   @override
//   State<HomeWorkTwo> createState() => _HomeWorkTwoState();
// }

// class _HomeWorkTwoState extends State<HomeWorkTwo> {
//   TextEditingController firstNameController = TextEditingController();

//   TextEditingController lastNameController = TextEditingController();

//   TextEditingController addressController = TextEditingController();

//   TextEditingController emailNameController = TextEditingController();

//   TextEditingController numberNameController = TextEditingController();
//   String? _value;

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Admition Form"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: size.width * .05),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const InputHeading(title: "First Name : "),
//             const SizedBox(
//               height: 3,
//             ),
//             CustomTextField(
//                 controller: firstNameController.text,
//                 hintText: "Write first name",
//                 labelText: "First Name",
//                 keyboardType: TextInputType.name),
//             const SizedBox(
//               height: 8,
//             ),
//             const InputHeading(title: "Last Name :"),
//             const SizedBox(
//               height: 3,
//             ),
//             CustomTextField(
//                 controller: firstNameController.text,
//                 hintText: "Write Last name",
//                 labelText: "Last Name",
//                 keyboardType: TextInputType.name),
//             const SizedBox(
//               height: 8,
//             ),
//             const InputHeading(title: "Email Name :"),
//             const SizedBox(
//               height: 3,
//             ),
//             CustomTextField(
//                 controller: firstNameController.text,
//                 hintText: "Write your email",
//                 labelText: "Email",
//                 keyboardType: TextInputType.name),
//             const SizedBox(
//               height: 5,
//             ),
//             const InputHeading(title: "Phone :"),
//             const SizedBox(
//               height: 3,
//             ),
//             CustomTextField(
//                 controller: numberNameController.text,
//                 hintText: "Write phone number",
//                 labelText: "Phone",
//                 keyboardType: TextInputType.name),
//             Text("Gender :"),
//             Row(
//               children: [
//                 RadioListTile(
//                     title: Text("Male"),
//                     value: "Male",
//                     groupValue: _value,
//                     onChanged: (value) {
//                       setState(() {
//                         _value = value;
//                       });
//                     }),
//                 RadioListTile(
//                     title: Text("Female"),
//                     value: "Female",
//                     groupValue: _value,
//                     onChanged: (value) {
//                       setState(() {
//                         _value = value;
//                       });
//                     }),
//                 RadioListTile(
//                     title: Text("Custom"),
//                     value: "Custom",
//                     groupValue: _value,
//                     onChanged: (value) {
//                       setState(() {
//                         _value = value;
//                       });
//                     }),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
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
              const SizedBox(height: 8),
              const Text("Gender :"),
              Row(
                children: [
                  Flexible(
                    child: RadioListTile<String>(
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
                  // Flexible(
                  //   child: RadioListTile<String>(
                  //     title: const Text("Female"),
                  //     value: "Female",
                  //     groupValue: _value,
                  //     onChanged: (value) {
                  //       setState(() {
                  //         _value = value;
                  //       });
                  //     },
                  //   ),
                  // ),
                  // Flexible(
                  //   child: RadioListTile<String>(
                  //     title: const Text("Custom"),
                  //     value: "Custom",
                  //     groupValue: _value,
                  //     onChanged: (value) {
                  //       setState(() {
                  //         _value = value;
                  //       });
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
