import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:kursach/presentation/outstanding/card_picker.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class ManageOrganization extends StatefulWidget {
  ManageOrganization({Key? key}) : super(key: key);
  static const String route = "profile/manageorg";
  @override
  State<ManageOrganization> createState() => _ManageOrganizationState();
}

class _ManageOrganizationState extends State<ManageOrganization> {
  Uint8List? cardImage;
  Uint8List? logoImage;

  @override
  void initState() {
    var folderPath =
        "organiztion/${UserModel.get().organizationModel!.idCompany}/";
    SupaBaseClient.client.storage
        .from("kursach")
        .download("$folderPath/card.png")
        .then((value) {
      setState(() {
        cardImage = value;
      });
    });
    SupaBaseClient.client.storage
        .from("kursach")
        .download("$folderPath/logo.png")
        .then((value) {
      setState(() {
        logoImage = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 8),
                child: NeumorphicFloatingActionButton(
                    mini: true,
                    style:
                        NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
                    child: Icon(Icons.drive_file_rename_outline),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (ctx) {
                            return AlertDialog(
                              content: SizedBox(
                                height: 150,
                                child: CardPicker(
                                    baseCard: cardImage,
                                    baseLogo: logoImage,
                                    setLogo: (_logoImage) => setState(() {
                                          logoImage = _logoImage;
                                        }),
                                    setCard: (_cardImage) => setState(() {
                                          cardImage = _cardImage;
                                        })),
                              ),
                            );
                          });
                    }),
              )
            ],
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                children: [
                  SizedBox.square(
                    dimension: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: Image.memory(logoImage!),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GradientMask(
                    size: 50,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    child: Text(
                      UserModel.get().organizationModel!.companyName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              background: FittedBox(
                fit: BoxFit.fill,
                child: Stack(
                  children: [
                    ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.memory(
                        cardImage!,
                        colorBlendMode: BlendMode.clear,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(child: ColoredBox(color: Colors.black26)),

                    // AnimatedSwitcher(
                    //   duration: Duration(milliseconds: 300),
                    //   child: cardImage == null
                    //       ? CircularProgressIndicator.adaptive()
                    //       : Image.memory(
                    //           cardImage!,
                    //           fit: BoxFit.fill,
                    //         ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(children: [
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
            ]),
          )
        ],
      ),
    );
  }
}
