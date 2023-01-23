import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/data/models/asset.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/utils/math.dart';

class AssetListCard extends StatelessWidget {
  final String image;
  final Asset asset;
  final AppSettings settings;
  final Function showAssetDetailsScreen;
  final Function deleteAsset;
  const AssetListCard({
    required this.image,
    required this.asset,
    required this.settings,
    required this.showAssetDetailsScreen,
    required this.deleteAsset,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showAssetDetailsScreen(asset.code);
      },
      onLongPress: () {
        deleteAsset(asset);
      },
      child: Card(
        elevation: 1.0,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 12, 10, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .1,
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl: image,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    height: 30,
                  ),

                  //      Text(
                  //   '${asset.code.characters.first}',
                  //   style: Theme.of(context).textTheme.headline4,
                  // )
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                asset.pairType == AssetType.crypto
                                    ? '${asset.code}/${asset.pairCode} '
                                    : '${asset.code} ',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              (DateTime.now()
                                          .difference(asset.debugUIUpdate)
                                          .inSeconds >
                                      60)
                                  ? Icon(
                                      Icons.sync_problem_rounded,
                                      size: 10,
                                      color: Colors.white60,
                                    )
                                  : Text('')
                            ],
                          ),
                          Text(
                            '${fixedCrypto(asset.currentAmount).toString()}',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${asset.currentUSDPercentage.abs().toStringAsFixed(2)}%',
                            style: asset.usdUp
                                ? Theme.of(context).textTheme.subtitle1
                                : Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            settings.appFiat.isStringLeading
                                ? '${settings.appFiat.symbol} ${(asset.currentValueToUSDTotal * settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                                : '${(asset.currentValueToUSDTotal * settings.appFiat.usdToFiat).toStringAsFixed(2)} ${settings.appFiat.symbol} ',
                            style: asset.usdUp
                                ? Theme.of(context).textTheme.subtitle1
                                : Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${asset.currentPairPercentage.abs().toStringAsFixed(2)}%',
                            style: asset.pairUp
                                ? Theme.of(context).textTheme.subtitle1
                                : Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            (asset.pairType == AssetType.fiat)
                                ? settings.appFiat.isStringLeading
                                    ? '${settings.appFiat.symbol} ${(asset.updatedValueToPairPerAmount * settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                                    : '${(asset.updatedValueToPairPerAmount * settings.appFiat.usdToFiat).toStringAsFixed(2)} ${settings.appFiat.symbol} '
                                : '${asset.updatedValueToPairPerAmount.toStringAsFixed(8)}',
                            style: asset.pairUp
                                ? Theme.of(context).textTheme.subtitle1
                                : Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
