import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

class ChatScreen extends StatefulWidget {
  final String peerId;
  final String peerNickname;
  final String peerAvatar;

  const ChatScreen({
    Key? key,
    this.peerId = '',
    this.peerNickname = '',
    this.peerAvatar = '',
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController textEditingController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.peerId,
          style: const TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: BlocBuilder<ChatBloc, ChatState>(
                  builder: (context, state) => state.maybeMap(
                    init: (initState) {
                      return LayoutBuilder(
                        builder: (context, constraints) {
                          if (initState.listMessages.isNotEmpty) {
                            return ListView.builder(
                              itemCount: initState.listMessages.length,
                              reverse: true,
                              itemBuilder: (context, index) {
                                return buildItem(
                                  context,
                                  index,
                                  initState.listMessages[index],
                                  initState.currentUserId,
                                  widget.peerAvatar,
                                );
                              },
                            );
                          } else {
                            return const Center(
                              child: Text('No message here yet...'),
                            );
                          }
                        },
                      );
                    },
                    orElse: () => const SizedBox(),
                  ),
                ),
              ),
              buildInput(context, textEditingController, focusNode),
            ],
          ),
        ],
      ),
    );
  }
}

bool isLastMessageRight(int index, String idForm, String currentUserId) {
  if ((index > 0 && idForm != currentUserId) || index == 0) {
    return true;
  } else {
    return false;
  }
}

bool isLastMessageLeft(int index, String idForm, String currentUserId) {
  if ((index > 0 && idForm == currentUserId) || index == 0) {
    return true;
  } else {
    return false;
  }
}

Widget buildItem(BuildContext context, int index, MessageChat messageChat,
    String currentUserId, String peerAvatar) {
  if (messageChat.idFrom == currentUserId) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        messageChat.type == TypeMessage.text
            ? Container(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.only(
                  bottom: isLastMessageRight(
                          index, messageChat.idFrom, currentUserId)
                      ? 20
                      : 10,
                  right: 10,
                ),
                child: Text(
                  messageChat.content,
                  style: const TextStyle(color: Colors.white),
                ),
              )
            : messageChat.type == TypeMessage.image
                ? Container(
                    margin: EdgeInsets.only(
                        bottom: isLastMessageRight(
                                index, messageChat.idFrom, currentUserId)
                            ? 20
                            : 10,
                        right: 10),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(0))),
                      child: Material(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network(
                          messageChat.content,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              width: 200,
                              height: 200,
                              child: Center(
                                child: CircularProgressIndicator(
                                  color: Colors.grey,
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
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
                              size: 35,
                              color: Colors.grey,
                            );
                          },
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(
                        bottom: isLastMessageRight(
                                index, messageChat.idFrom, currentUserId)
                            ? 20
                            : 10,
                        right: 10),
                    child: const Icon(
                      Icons.account_circle,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
      ],
    );
  } else {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Material(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                clipBehavior: Clip.hardEdge,
                child: Icon(
                  Icons.account_circle,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              messageChat.type == TypeMessage.text
                  ? Container(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        messageChat.content,
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  : messageChat.type == TypeMessage.image
                      ? Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(0))),
                            child: Material(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              clipBehavior: Clip.hardEdge,
                              child: Image.network(
                                messageChat.content,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    width: 200,
                                    height: 200,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.grey,
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
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.account_circle,
                                    size: 35,
                                    color: Colors.grey,
                                  );
                                },
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.only(
                              bottom: isLastMessageLeft(
                                      index, messageChat.idFrom, currentUserId)
                                  ? 20
                                  : 10,
                              right: 20),
                          child: const Icon(
                            Icons.account_circle,
                            size: 35,
                            color: Colors.grey,
                          ),
                        ),
            ],
          )
        ],
      ),
    );
  }
}

Widget buildInput(BuildContext context,
    TextEditingController textEditingController, FocusNode focusNode) {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey, width: 0.5)),
        color: Colors.white),
    child: Row(
      children: [
        Material(
          color: Colors.white,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.image),
              color: Colors.black,
            ),
          ),
        ),
        Material(
          color: Colors.white,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.face),
              color: Colors.black,
            ),
          ),
        ),
        Flexible(
          child: TextField(
            onSubmitted: (value) {},
            style: const TextStyle(color: Colors.black, fontSize: 15),
            controller: textEditingController,
            decoration: const InputDecoration.collapsed(
              hintText: 'Type your message...',
              hintStyle: TextStyle(color: Colors.grey),
            ),
            focusNode: focusNode,
          ),
        ),
        Material(
          color: Colors.white,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: IconButton(
              onPressed: () {
                context.read<ChatBloc>().add(
                      ChatEvent.sendMessage(
                        textEditingController.text,
                        TypeMessage.text,
                      ),
                    );
              },
              icon: const Icon(Icons.send),
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

class TypeMessage {
  static const text = 0;
  static const image = 1;
  static const sticker = 2;
}
