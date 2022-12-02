import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/ticket_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/domain/orders/bloc/orders_bloc.dart';
import 'package:kursach/domain/tickets/bloc/tickets_bloc.dart';
import 'package:kursach/presentation/home/profile/orders/my_orders_detailed.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';
import 'package:kursach/presentation/outstanding/product/product_screen.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:rxdart/rxdart.dart';

class MyTicketsScreen extends StatefulWidget {
  MyTicketsScreen({Key? key}) : super(key: key);

  @override
  State<MyTicketsScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyTicketsScreen> {
  @override
  void initState() {
    context
        .read<TicketsBloc>()
        .add(TicketsEvent.loadTickets(UserModel.get().login));
    super.initState();
  }

  List<TicketModel>? currentTickets;

  Map<DateTime, List<TicketModel>> parseList({List<TicketModel>? tickets}) {
    if (tickets != null) {
      currentTickets = [...tickets];
    }
    currentTickets!.sort((a, b) => a.date.compareTo(b.date));
    late Map<DateTime, List<TicketModel>> listToMap;
    DateTime? lastDate;
    for (var ticket in currentTickets!.reversed) {
      var elementDate = ticket.date;
      if (lastDate == null) {
        lastDate = elementDate;
        listToMap = {
          lastDate: [ticket]
        };
      } else {
        if (DateUtils.isSameDay(lastDate, elementDate)) {
          listToMap[lastDate]!.add(ticket);
        } else {
          lastDate = elementDate;
          listToMap.addAll({
            lastDate: [ticket]
          });
        }
      }
    }
    return listToMap;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<TicketsBloc, TicketsState>(
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              if (currentTickets == null) {
                return CircularProgressIndicator();
              } else {
                var listToMap = parseList();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomScrollView(slivers: [
                    ...listToMap.entries
                        .map((e) => Section(
                            ordersAmount: e.value.length,
                            title: DateFormat("d MMMM y", 'ru').format(e.key),
                            items: e.value
                                .map((e) => TicketWidget(
                                      ticket: e,
                                    ))
                                .toList()))
                        .toList()
                  ]),
                );
              }
            }, loaded: (tickets) {
              if (tickets.isEmpty) {
                return Text("Нет активных тикетов");
              } else {
                var listToMap = parseList(tickets: tickets);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomScrollView(slivers: [
                    SliverAppBar(
                      iconTheme: IconThemeData(color: Colors.black),
                      title: Text(
                        "Мои заявки",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      actions: [
                        IconButton(
                            onPressed: () => showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.95),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10))),
                                builder: (ctx) => CreateRequestWIdget()),
                            icon: Icon(
                              Icons.add,
                              color: Colors.lightGreen,
                            ))
                      ],
                      pinned: true,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                    ),
                    ...listToMap.entries
                        .map((e) => Section(
                            ordersAmount: e.value.length,
                            title: DateFormat("d MMMM y", 'ru').format(e.key),
                            items: e.value
                                .map((e) => TicketWidget(
                                      ticket: e,
                                    ))
                                .toList()))
                        .toList()
                  ]),
                );
              }
            });
          },
        ),
      ),
    );
  }
}

class CreateRequestWIdget extends StatefulWidget {
  const CreateRequestWIdget({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateRequestWIdget> createState() => _CreateRequestWIdgetState();
}

class _CreateRequestWIdgetState extends State<CreateRequestWIdget> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Создать обращение в техническую поддержку",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    counterText: _controller.text.length < 20
                        ? "Осталось ${20 - _controller.text.length} символов для отправки"
                        : "Готово к отправке",
                    hintText: "Текст обращения",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                minLines: 4,
                maxLines: 8,
              ),
            ),
            BlocConsumer<TicketsBloc, TicketsState>(
              listener: (ctx, state) {
                state.maybeWhen(
                    orElse: () => null,
                    added: (ticketModel) {
                      context
                          .read<TicketsBloc>()
                          .add(TicketsEvent.loadTickets(UserModel.get().login));
                      Navigator.pop(context);
                    });
              },
              builder: (context, state) {
                return state.maybeWhen(
                    loading: (_) => CircularProgressIndicator(),
                    orElse: () => GradientMask(
                          size: _controller.text.length < 20 ? 0 : 50,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<TicketsBloc>().add(
                                  TicketsEvent.addTicket(
                                      content: _controller.text,
                                      userLogin: UserModel.get().login));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: _controller.text.length < 20
                                    ? Colors.white
                                    : Colors.white54,
                                elevation:
                                    _controller.text.length < 20 ? 0 : 5),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                "Создать",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ));
              },
            ),
            if (MediaQuery.of(context).viewInsets.bottom == 0)
              SizedBox(
                height: 10,
              )
          ],
        ),
      ),
    );
  }
}

class TicketWidget extends StatefulWidget {
  const TicketWidget({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  final TicketModel ticket;

  @override
  State<TicketWidget> createState() => _TicketWidgetState();
}

class _TicketWidgetState extends State<TicketWidget> {
  late ExpandableController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = ExpandableController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpandablePanel(
            controller: _controller,
            header: Text(
              "Заявка №${widget.ticket.supportRequestId}, ${widget.ticket.content}",
              overflow: TextOverflow.fade,
              softWrap: false,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            collapsed: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  ${DateFormat("Hm", 'ru').format(widget.ticket.date)}",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      widget.ticket.supportStatusName,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ],
            ),
            expanded: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 8.0),
                  child: Text(
                    "Текст обращения",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.ticket.content,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
                if (widget.ticket.answer != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 8.0),
                    child: Text(
                      "Ответ специалиста",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                if (widget.ticket.answer != null)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.ticket.answer!,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  ${DateFormat("Hm", 'ru').format(widget.ticket.date)}",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      widget.ticket.supportStatusName,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class Section extends MultiSliver {
  Section({
    Key? key,
    required String title,
    required int ordersAmount,
    Color headerColor = Colors.white,
    Color titleColor = Colors.black,
    required List<Widget> items,
  }) : super(
          key: key,
          pushPinnedChildren: true,
          children: [
            SliverPinnedHeader(
                child: ColoredBox(
              color: headerColor,
              child: ListTile(
                textColor: titleColor,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title),
                    Text(ordersAmount == 1
                        ? "1 заявка"
                        : ordersAmount < 5
                            ? "$ordersAmount заявки"
                            : "$ordersAmount заявок"),
                  ],
                ),
              ),
            )),
            SliverList(
              delegate: SliverChildListDelegate.fixed(items),
            ),
          ],
        );
}
