import 'package:flutter/material.dart';

class SecondColumn extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const SecondColumn({super.key, this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121117),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: const Color(0xFF1E2C47),
            child: Stack(
              children: [
                Positioned(
                  top: 16,
                  left: 16,
                  child: Row(
                    children: [
                      if (scaffoldKey != null)
                        IconButton(
                          icon: const Icon(Icons.menu, color: Colors.white),
                          onPressed: () =>
                              scaffoldKey!.currentState!.openDrawer(),
                        ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.edit, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 50),
                        decoration: BoxDecoration(
                          color: const Color(0xFF151B29),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Text(
                          "Add Photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -1,
                        right: -3,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.edit,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon:
                        Icon(Icons.alternate_email, color: Colors.white54),
                        hintText: "Username",
                        hintStyle: const TextStyle(color: Colors.white54),
                        filled: true,
                        fillColor: const Color(0xFF121117),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    DropdownButtonFormField<String>(
                      style: const TextStyle(color: Colors.white),
                      dropdownColor: const Color(0xFF1E1D23),
                      hint: const Text(
                        "Student",
                        style: TextStyle(color: Colors.white54),
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.school, color: Colors.white54),
                        filled: true,
                        fillColor: const Color(0xFF121117),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xFF1F222C), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 1.5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xFF1F222C), width: 1),
                        ),
                      ),
                      items: [
                        "Student",
                        "Alumni",
                        "Teacher",
                        "Postgraduate",
                        "Other",
                      ].map(
                            (String itemName) => DropdownMenuItem(
                          value: itemName,
                          child: Text(itemName,
                              style: const TextStyle(color: Colors.white54)),
                        ),
                      ).toList(),
                      onChanged: (selectedValue) {},
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.business, color: Colors.white54),
                        suffixIcon: const Icon(Icons.search),
                        suffixIconColor: Colors.white54,
                        hintText: "Institution Name",
                        hintStyle: const TextStyle(color: Colors.white54),
                        filled: true,
                        fillColor: const Color(0xFF121117),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Institution not found? Add here.",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon:
                        Icon(Icons.school_outlined, color: Colors.white54),
                        hintText: "Course of Study",
                        hintStyle: const TextStyle(color: Colors.white54),
                        filled: true,
                        fillColor: const Color(0xFF121117),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),


                    DropdownButtonFormField<String>(
                      style: const TextStyle(color: Colors.white),
                      dropdownColor: const Color(0xFF1E1D23),
                      hint: const Text(
                        "Current-year (Level)",
                        style: TextStyle(color: Colors.white54),
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.white54),
                        filled: true,
                        fillColor: const Color(0xFF121117),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xFF1F222C), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 1.5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xFF1F222C), width: 1),
                        ),
                      ),
                      items: [
                        "100 Level",
                        "200 Level",
                        "300 Level",
                        "400 Level",
                        "500 Level",
                      ].map(
                            (String levelName) => DropdownMenuItem(
                          value: levelName,
                          child: Text(levelName,
                              style: const TextStyle(color: Colors.white54)),
                        ),
                      ).toList(),
                      onChanged: (selectedValue) {},
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3E3C41),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
