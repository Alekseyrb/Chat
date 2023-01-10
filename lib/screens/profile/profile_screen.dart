import 'dart:io';

import 'package:blocs/blocs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const ProfileScreenState(),
    );
  }
}

class ProfileScreenState extends StatefulWidget {
  const ProfileScreenState({Key? key}) : super(key: key);

  @override
  State<ProfileScreenState> createState() => _ProfileScreenStateState();
}

class _ProfileScreenStateState extends State<ProfileScreenState> {
  TextEditingController? controllerNickname;
  TextEditingController? controllerAboutMe;

  String id = '';
  String nickname = '';
  String aboutMe = '';
  String photoUrl = '';

  @override
  void initState() {
    final user = GetIt.instance.get<UpdateDateService>();
    nickname = user.nickname;
    aboutMe = user.aboutMe;
    super.initState();
  }

  bool isLoading = false;
  File? avatarImageFile;

  final FocusNode focusNodeNickname = FocusNode();
  final FocusNode focusNodeAboutMe = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) => state.maybeMap(
                    init: (initState) {
                      return CupertinoButton(
                        onPressed: () {
                          setState(() {
                            context
                                .read<ProfileBloc>()
                                .add(const ProfileEvent.getImageUser());
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          child: BlocBuilder<ProfileBloc, ProfileState>(
                            builder: (context, state) => state.maybeMap(
                              init: (initState) {
                                id = initState.user.id;
                                nickname = initState.user.nickName;
                                aboutMe = initState.user.aboutMe;
                                return initState.user.photoUrl.isNotEmpty
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(45),
                                        child: Image.network(
                                          initState.user.photoUrl,
                                          fit: BoxFit.cover,
                                          width: 90,
                                          height: 90,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return const Icon(
                                              Icons.account_circle,
                                              size: 90,
                                              color: Colors.grey,
                                            );
                                          },
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            }
                                            return SizedBox(
                                              width: 90,
                                              height: 90,
                                              child: Center(
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Colors.black,
                                                  value: loadingProgress
                                                              .expectedTotalBytes !=
                                                          null
                                                      ? loadingProgress
                                                              .cumulativeBytesLoaded /
                                                          loadingProgress
                                                              .expectedTotalBytes!
                                                      : null,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    : const Icon(
                                        Icons.account_circle,
                                        size: 90,
                                        color: Colors.grey,
                                      );
                              },
                              orElse: () => const SizedBox(),
                            ),
                          ),
                        ),
                      );
                    },
                    orElse: () => const SizedBox(),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 5, top: 10),
                    child: const Text(
                      'Nickname',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(primaryColor: Colors.black),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Nickname',
                          contentPadding: EdgeInsets.all(5),
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: TextEditingController.fromValue(
                          TextEditingValue(
                            text: nickname,
                            selection: TextSelection.collapsed(
                                offset: nickname.length),
                          ),
                        ),
                        onChanged: (value) {
                          nickname = value;
                        },
                        focusNode: focusNodeNickname,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 5, top: 30),
                    child: const Text(
                      'About me',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(primaryColor: Colors.black),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'About me',
                          contentPadding: EdgeInsets.all(5),
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: TextEditingController.fromValue(
                          TextEditingValue(
                            text: aboutMe,
                            selection:
                                TextSelection.collapsed(offset: aboutMe.length),
                          ),
                        ),
                        onChanged: (value) {
                          aboutMe = value;
                        },
                        focusNode: focusNodeAboutMe,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 50),
                child: TextButton(
                  onPressed: () {
                    context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.updateInfo(nickname, aboutMe));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.fromLTRB(30, 10, 30, 10)),
                  ),
                  child: const Text(
                    'Update',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
