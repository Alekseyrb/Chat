import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => state.maybeMap(
          init: (initState) {
            return ListView.builder(
              itemCount: initState.listUser.length,
              itemBuilder: (context, index) {
                return buildItem(context, initState.listUser[index]);
              },
            );
          },
          orElse: () => const SizedBox(),
        ),
      ),
    );
  }
}

Widget buildItem(BuildContext context, UserChat userChat) {
  return Container(
    margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
    child: TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      child: Row(
        children: [
          Material(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            clipBehavior: Clip.hardEdge,
            child: userChat.photoUrl.isNotEmpty
                ? Image.network(
                    userChat.photoUrl,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return SizedBox(
                        width: 50,
                        height: 50,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.amber,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.account_circle,
                        size: 50,
                        color: Colors.amber,
                      );
                    },
                  )
                : const Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Colors.grey,
                  ),
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                    child: Text(
                      'Nickname: ${userChat.nickName}',
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'About me: ${userChat.aboutMe}',
                      maxLines: 1,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
