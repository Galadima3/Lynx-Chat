// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String documentID;

  const GetUserName({key, required this.documentID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //get the collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentID).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          //error might be here
          return Text(
              '${data['first name']} ${data['last name']}, ${data['age']}');
        }
        return Text('Loading');
      }),
    );
  }
}
