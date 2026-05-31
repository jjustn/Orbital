import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();
  
  bool isSwitched = false;

  final List<String> categories = [
    "Sports",
    "Travel",
    "Movies",
    "Food & Drinks",
    "Concerts",
  ];
  String? value;

  Future<void> _selectStartDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2026),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _startDateController.text =
            picked.day.toString().padLeft(2, '0') +
            "-" +
            picked.month.toString().padLeft(2, '0') +
            "-" +
            picked.year.toString();
      });
    }
  }

  Future<void> _selectEndDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2026),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _endDateController.text =
            picked.day.toString().padLeft(2, '0') +
            "-" +
            picked.month.toString().padLeft(2, '0') +
            "-" +
            picked.year.toString();
      });
    }
  }

  Future<void> _selectStartTime() async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        _startTimeController.text =
            picked.hour.toString().padLeft(2, '0') +
            ":" +
            picked.minute.toString().padLeft(2, '0');
      });
    }
  }

  Future<void> _selectEndTime() async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        _endTimeController.text =
            picked.hour.toString().padLeft(2, '0') +
            ":" +
            picked.minute.toString().padLeft(2, '0');
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
                Padding(padding: const EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 170.0,
                      child: TextFormField(
                        controller: _startDateController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_month),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          label: Text("Start Date"),
                        ),
                        onTap: () {
                          _selectStartDate();
                        },
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(5.0)),
                    SizedBox(
                      width: 170.0,
                      child: TextFormField(
                        controller: _endDateController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_month),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          label: Text("End Date"),
                        ),
                        onTap: () {
                          _selectEndDate();
                        },
                      ),
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 170.0,
                      child: TextFormField(
                        controller: _startTimeController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alarm),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          label: Text("Start Time"),
                        ),
                        onTap: () {
                          _selectStartTime();
                        },
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(5.0)),
                    SizedBox(
                      width: 170.0,
                      child: TextFormField(
                        controller: _endTimeController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alarm),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          label: Text("End Time"),
                        ),
                        onTap: () {
                          _selectEndTime();
                        },
                      ),
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.all(10.0)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Padding(padding: const EdgeInsets.all(10.0)),
                  Text("Private Event", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),),
                  Padding(padding: const EdgeInsets.all(10.0)),
                  Switch(value: isSwitched, 
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
                Padding(padding: const EdgeInsets.all(10.0)),
                ],),
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
