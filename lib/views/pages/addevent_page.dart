import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final TextEditingController _dateController = TextEditingController();

  final List<String> categories = [
    "Sports",
    "Travel",
    "Movies",
    "Food & Drinks",
    "Concerts",
  ];
  String? value;

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2026),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Event")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text("Event Name"),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: "Event Description",
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_month),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text("Date"),
                    ),
                    onTap: () {
                      _selectDate();
                    },
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.alarm),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text("Time"),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                SizedBox(
                  height: 56,
                  width: 350,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        items: categories
                            .map(
                              (item) => DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              ),
                            )
                            .toList(),
                        menuWidth: 350.0,
                        onChanged: ((value) => setState(() {
                          this.value = value;
                        })),
                        hint: Text("Category"),
                        value: value,
                      ),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10.0)),
                FilledButton(
                  style: FilledButton.styleFrom(minimumSize: Size(200.0, 40.0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Create Event"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
