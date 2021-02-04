import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:shopaccount/constants.dart';
import 'package:shopaccount/src/models/costLists.dart';

class AddNewSell extends StatefulWidget {
  AddNewSell({Key key}) : super(key: key);

  @override
  _AddNewSellState createState() => _AddNewSellState();
}

class _AddNewSellState extends State<AddNewSell> {
  List<String> items = List();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    listfiles.forEach((element) {
      items.add(element.title);
    });
    return Padding(
      padding: EdgeInsets.all(KdefaultPaddin),
      child: Container(
        height: MediaQuery.of(context).size.height / 1.7,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownSearch(
                items: items,
                hint: "Choose Product",
                onChanged: print,
                validator: (String item) {
                  if (item == null)
                    return "Required field";
                  else
                    return null;
                },
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Shop Name',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Total Quantity',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some number';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Per Quantity Price',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some number';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton.icon(
                  color: kOrangeColor,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Process data.
                    }
                  },
                  icon: Icon(
                    Icons.done,
                  ),
                  label: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
