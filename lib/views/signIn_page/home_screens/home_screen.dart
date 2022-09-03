// ignore_for_file: use_build_context_synchronously, unnecessary_null_comparison

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/views/signIn_page/home_screens/chat_rooms.dart';
import 'package:food_ninja/views/signIn_page/sign_in_page_provider.dart';

class ChatHomeScreen extends StatefulWidget {
  ChatHomeScreen({Key? key}) : super(key: key);

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen>
    with WidgetsBindingObserver {
  late TextEditingController controller = TextEditingController();
  bool isLoading = false;
  Map<String, dynamic>? userMap;

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  String chatRoomId(String user1, String user2) {
    if (user1[0].toLowerCase().codeUnits[0] >
        user2.toLowerCase().codeUnits[0]) {
      return "$user1$user2";
    } else {
      return "$user2$user1";
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    setStatus("Online");
  }

  @override
  void setStatus(String status) async {
    await firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .update({
      "status": status,
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      //online
      setStatus("Online");
    } else {
      //offline
      setStatus("Offline");
    }
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    log(auth.currentUser!.email.toString());

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await auth.signOut();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => SignINPageProvider())));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: 'search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        FirebaseFirestore firestore =
                            FirebaseFirestore.instance;
                        setState(() {
                          isLoading = true;
                        });
                        await firestore
                            .collection('users')
                            .where("email", isEqualTo: controller.text)
                            .get()
                            .then((value) {
                          setState(() {
                            userMap = value.docs[0].data();
                            log(userMap.toString());
                            isLoading = false;
                          });
                        });
                      },
                      child: const Text('Search'),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    userMap != null
                        ? ListTile(
                            onTap: () {
                              log(auth.currentUser!.displayName.toString());
                              log(userMap!['name']);
                              String roomId = chatRoomId(
                                  auth.currentUser!.displayName.toString(),
                                  userMap!['name']);
                              log(roomId);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => ChatRooms(
                                        chatRoomId: roomId,
                                        userMap: userMap!,
                                      ))));
                            },
                            title: Text(userMap!['name']),
                            subtitle: Text(userMap!['email']),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
    );
  }
}
