import 'package:flutter/material.dart';
import 'package:mytodo/utils/color.dart';

List students = [];

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppCollor.appBackground,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: AppCollor.appBarCollor,
        title: const Text(
          "Flutter Student",
          style: TextStyle(
              fontSize: 20,
              color: AppCollor.textColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: AppCollor.textColor,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppCollor.textColor,
              )),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .3,
        height: size.height * .06,
        child: ElevatedButton(
            style: ButtonStyle(
              elevation: const WidgetStatePropertyAll(3),
              overlayColor:
                  const WidgetStatePropertyAll(AppCollor.buttonOverlay),
              backgroundColor: WidgetStateProperty.all(AppCollor.appBarCollor),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Add()));
            },
            child: const Text(
              "Add",
              style: TextStyle(
                fontSize: 15,
                color: AppCollor.textColor,
              ),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * .01, horizontal: size.width * .03),
        child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return students[index];
            }),
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController nameController = TextEditingController();

  TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppCollor.appBackground,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: AppCollor.appBarCollor,
        iconTheme: const IconThemeData(
          color: AppCollor.textColor,
        ),
        title: const Text(
          "Add Student",
          style: TextStyle(
              fontSize: 20,
              color: AppCollor.textColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * .1,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: size.height * .3,
                      width: size.width * .8,
                      decoration: BoxDecoration(
                          color: const Color(0xF5FFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(3, 3),
                                blurRadius: 3.0,
                                spreadRadius: 3.0)
                          ]),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * .02),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * .06,
                            ),
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                  hintText: "Write Student Name...",
                                  labelText: "Student Name",
                                  prefixIcon: Icon(Icons.person,
                                      color: AppCollor.appBarCollor),
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: AppCollor.appBarCollor),
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: size.height * .05,
                            ),
                            TextFormField(
                              controller: jobController,
                              decoration: const InputDecoration(
                                  hintText: "Write Student job...",
                                  labelText: "Student Job",
                                  prefixIcon: Icon(Icons.flutter_dash,
                                      color: AppCollor.appBarCollor),
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: AppCollor.appBarCollor),
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: -size.height * .04,
                        left: size.width * .3,
                        child: Container(
                          height: size.height * .08,
                          width: size.height * .08,
                          decoration: BoxDecoration(
                            color: AppCollor.appBarCollor,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppCollor.textColor, width: 2),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: AppCollor.textColor,
                            size: 35,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                SizedBox(
                  width: size.width * .8,
                  height: size.height * .06,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: const WidgetStatePropertyAll(3),
                        overlayColor: const WidgetStatePropertyAll(
                            AppCollor.buttonOverlay),
                        backgroundColor:
                            WidgetStateProperty.all(AppCollor.appBarCollor),
                      ),
                      onPressed: () {
                        if (nameController.text.isNotEmpty &&
                            jobController.text.isNotEmpty) {
                          setState(() {
                            students.add(myStudent(context));
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Data is Added")));
                            nameController.clear();
                            jobController.clear();
                            Navigator.pop(context);
                          });
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Your Controller is empty")));
                        }
                      },
                      child: const Text(
                        "Add that Student",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppCollor.textColor,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myStudent(
    BuildContext context,
  ) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * .08,
          decoration: BoxDecoration(
              color: const Color(0xF5FFFFFF),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(3, 3),
                    blurRadius: 3.0,
                    spreadRadius: 3.0)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * .7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: size.height * .06,
                        width: size.height * .06,
                        decoration: const BoxDecoration(
                          color: AppCollor.appBarCollor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            nameController.text[0].toUpperCase().toString(),
                            style: const TextStyle(
                                fontSize: 22,
                                color: AppCollor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          nameController.text.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(
                          jobController.text.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * .02,
        )
      ],
    );
  }
}
