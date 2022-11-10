import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/organization_model.dart';

class MarketWidget extends StatelessWidget {
  const MarketWidget({Key? key, required this.model}) : super(key: key);
  final OrganizationModel model;

  Map<String, String> getUrlForImage() {
    var mapToReturn = <String, String>{};
    mapToReturn.addAll({
      'card': SupaBaseClient.client.storage
          .from('kursach')
          .getPublicUrl('organiztion/${model.idCompany}/card.png'),
      'logo': SupaBaseClient.client.storage
          .from('kursach')
          .getPublicUrl('organiztion/${model.idCompany}/logo.png')
    });
    return mapToReturn;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: CachedNetworkImage(
                      imageUrl: getUrlForImage()['card']!,
                      fit: BoxFit.fill,
                    )),
                    Positioned.fill(child: ColoredBox(color: Colors.white24)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox.square(
                        dimension: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(360)),
                          child: CachedNetworkImage(
                              imageUrl: getUrlForImage()['logo']!),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(model.companyName.toUpperCase(),
                            textScaleFactor: 0.8,
                            style: Theme.of(context).textTheme.titleMedium),
                        Text(
                          model.companyTypeName,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
