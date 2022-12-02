import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kursach/domain/pickers/image_picker.dart';
import 'package:kursach/presentation/outstanding/cropper.dart';

class CardPicker extends StatelessWidget {
  CardPicker(
      {Key? key,
      required this.setCard,
      required this.setLogo,
      this.baseCard,
      this.baseLogo})
      : super(key: key);
  Uint8List? baseLogo;
  Uint8List? baseCard;
  void Function(Uint8List?) setLogo;
  void Function(Uint8List?) setCard;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        ImagePickers.pickImage().then((value) {
          setCard(value!);
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
                    if (baseCard != null)
                      Positioned.fill(
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.memory(
                                baseCard!,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              right: 5,
                              top: 5,
                              child: SizedBox.square(
                                dimension: 30,
                                child: FloatingActionButton(
                                    mini: true,
                                    onPressed: () => setCard(null),
                                    child: Icon(
                                      Icons.close,
                                      size: 20,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: NeumorphicButton(
                  minDistance: 0,
                  drawSurfaceAboveChild: true,
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
                                    setLogo(memoryImage.bytes);

                                    Navigator.pop(context);
                                  },
                                ));
                      }
                    });
                  },
                  padding: EdgeInsets.zero,
                  style: baseLogo != null
                      ? NeumorphicStyle(boxShape: NeumorphicBoxShape.circle())
                      : null,
                  child: SizedBox.square(
                    dimension: baseLogo == null ? null : 50,
                    child: baseLogo != null
                        ? Image.memory(
                            baseLogo!,
                            fit: BoxFit.fill,
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.add_a_photo,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "Логотип",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                )
                              ],
                            ),
                          ),
                  ),
                ),
              ),
              if (baseLogo != null)
                Positioned(
                  left: 5,
                  top: 5,
                  child: SizedBox.square(
                    dimension: 30,
                    child: FloatingActionButton(
                        mini: true,
                        onPressed: () => setLogo(null),
                        child: Icon(
                          Icons.close,
                          size: 20,
                        )),
                  ),
                ),
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
