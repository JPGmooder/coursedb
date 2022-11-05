import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/pickers/image_picker.dart';
import 'package:kursach/presentation/outstanding/cropper.dart';

class CardPicker extends StatefulWidget {
  CardPicker(
      {Key? key,
      required this.setCard,
      required this.setLogo,
      this.baseCard,
      this.baseLogo})
      : super(key: key);
  Uint8List? baseLogo;
  Uint8List? baseCard;
  void Function(Uint8List) setLogo;
  void Function(Uint8List) setCard;

  @override
  State<CardPicker> createState() => _CardPickerState();
}

class _CardPickerState extends State<CardPicker> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        ImagePickers.pickImage().then((value) {
          setState(() {
            widget.baseCard = value;
            widget.setCard(widget.baseCard!);
          });
        });
      },
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 150,
                child: Center(
                    child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_a_photo,
                          color: Colors.grey,
                        ),
                        Center(
                          child: Text(
                            "Изображение карточки предприятия.",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        )
                      ],
                    ),
                    if (widget.baseCard != null)
                      Image.memory(
                        widget.baseCard!,
                        fit: BoxFit.fill,
                      ),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: NeumorphicButton(
                  onPressed: () {
                    ImagePickers.pickImage().then((value) {
                      if (value != null) {
                        showDialog(
                            context: context,
                            builder: (ctx) => CropperWidget(
                                  defaultImage: value,
                                  constraints: BoxConstraints(
                                      maxWidth: 250, maxHeight: 100),
                                  onCroppingComplete: (memoryImage) {
                                    setState(() {
                                      Navigator.pop(context);
                                      widget.baseLogo = memoryImage.bytes;
                                      widget.setLogo(widget.baseLogo!);
                                    });
                                  },
                                ));
                      }
                    });
                  },
                  padding: EdgeInsets.all(0),
                  style: widget.baseLogo != null
                      ? NeumorphicStyle(boxShape: NeumorphicBoxShape.circle())
                      : null,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox.square(
                      dimension: widget.baseLogo == null ? null : 50,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.add_a_photo,
                                color: Colors.grey,
                              ),
                              Text(
                                "Логотип",
                                style: Theme.of(context).textTheme.labelMedium,
                              )
                            ],
                          ),
                          if (widget.baseLogo != null)
                            Image.memory(
                              widget.baseLogo!,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

          // Padding(
          //   padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          //   child: Text(
          //     "Добавьте фотографию карточки предприятия!",
          //     textScaleFactor: 0.8,
          //     style: Theme.of(context).textTheme.labelMedium,
          //   ),
          // ),
        ],
      ),
    );
  }
}
