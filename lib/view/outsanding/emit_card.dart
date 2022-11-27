import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kursachdesktop/domain/admin/users/users_cubit.dart';
import 'package:pluto_grid/pluto_grid.dart';

class EmitCard extends StatefulWidget {
  const EmitCard({
    Key? key,
    required this.onAccept,
    required this.onDeny,
  }) : super(key: key);
  final void Function() onAccept;
  final void Function() onDeny;

  @override
  State<EmitCard> createState() => _EmitCardState();
}

class _EmitCardState extends State<EmitCard>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animation;
  late AnimationController _controller;
  bool isClosed = false;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
    _animation = Tween<Offset>(begin: Offset(0, 5), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
    _controller.addListener(() {
      print(_controller.value);
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    if (isClosed) {
      _controller.forward();
    }
    return SlideTransition(
      position: _animation,
      child: Stack(
        children: [
          Card(
            color: Colors.amber[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.amber[200],
                          child: Center(
                            child: Text(
                              "Изменения не сохранены",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Похоже вы внесли некоторые изменения в настоящую таблицу, однако они не были сохранены. ",
                          textAlign: TextAlign.justify,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black),
                        ),
                        Text(
                          "Сохранить изменения?",
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  BlocConsumer<UsersCubit, UsersState>(
                    listener: ((context, state) {
                      state.maybeWhen(
                          orElse: () => null,
                          usersManaged: (_) {
                            _controller.reverse();
                          });
                    }),
                    builder: (context, state) {
                      return state.maybeWhen(
                          loading: () => CircularProgressIndicator(),
                          orElse: () => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red[200]),
                                      onPressed: () {
                                        isClosed = true;
                                        _controller.reverse();
                                        widget.onDeny();
                                      },
                                      child: Text("Откатить изменения")),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.lightGreen),
                                      onPressed: () {
                                        isClosed = true;
                                        widget.onAccept();
                                        _controller.reverse();
                                      },
                                      child: Text("Сохранить"))
                                ],
                              ));
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox.square(
              dimension: 25,
              child: FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: () {
                  isClosed = true;
                  _controller.reverse();
                },
                child: Icon(Icons.close),
                mini: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
