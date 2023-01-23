import 'package:cached_network_image/cached_network_image.dart';
import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/data/models/asset.dart';
import 'package:cointrack/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen(
      {required this.navigatorKey, required this.showAssetDetailsScreen});
  final Function showAssetDetailsScreen;
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  _ExploreScreenState createState() =>
      _ExploreScreenState(showAssetDetailsScreen: showAssetDetailsScreen);
}

class _ExploreScreenState extends State<ExploreScreen> {
  final Function showAssetDetailsScreen;
  final TextEditingController _filter = TextEditingController();

  String _searchText = '';
  List<BaseAsset> _assets = [];
  List<BaseAsset> _appAssetsList = [];

  _ExploreScreenState({required this.showAssetDetailsScreen}) {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = '';
          _appAssetsList = _assets;
        });
      } else {
        setState(() {
          _searchText = _filter.text.toUpperCase();
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _filter.dispose();
  }

  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (_) {
        return MaterialPageRoute(
          builder: (context) => BlocBuilder<AssetsCubit, AssetsState>(
            builder: (context, state) {
              _assets = state.assets;
              if (_searchText.isNotEmpty) {
                List<BaseAsset> tempList = [];
                for (int i = 0; i < _assets.length; i++) {
                  if (_assets[i]
                          .code
                          .toLowerCase()
                          .startsWith(_searchText.toLowerCase()) ||
                      _assets[i]
                          .name
                          .toLowerCase()
                          .startsWith(_searchText.toLowerCase())) {
                    tempList.add(_assets[i]);
                  }
                }
                _appAssetsList = tempList;
              } else
                _appAssetsList = _assets;

              return Scaffold(
                appBar: AppBar(
                  toolbarHeight: MediaQuery.of(context).size.height * .05,
                  title: Row(
                    children: [
                      state.loading
                          ? Text('Loading')
                          : InkWell(
                              child: Row(
                                children: [
                                  Icon(Icons.get_app),
                                  Text(_assets.length.toString())
                                ],
                              ),
                              onTap: () {
                                BlocProvider.of<AssetsCubit>(context)
                                    .updateAssetsPrice();
                              },
                            ),
                      Expanded(
                        child: TextField(
                          style: Theme.of(context).textTheme.headline5,
                          controller: _filter,
                          decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.white),
                              hintText: 'Search...',
                              hintStyle: Theme.of(context).textTheme.headline6),
                        ),
                      ),
                      _searchText.isNotEmpty
                          ? InkWell(
                              child: Icon(Icons.close),
                              onTap: () {
                                _filter.clear();
                              })
                          : Text(''),
                    ],
                  ),
                  centerTitle: true,
                  backgroundColor: Theme.of(context).bottomAppBarColor,
                ),
                backgroundColor: Theme.of(context).backgroundColor,
                body: Container(
                  padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                  child: CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) => InkWell(
                                  onTap: () {
                                    // BlocProvider.of<AssetsCubit>(context)
                                    //     .like(_appAssetsList[index]);
                                    // print('pressed');
                                    FocusScope.of(context).unfocus();
                                    showAssetDetailsScreen(
                                        _appAssetsList[index].code);
                                    _filter.clear();
                                  },
                                  child: Card(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            _appAssetsList[index].image ==
                                                    'empty'
                                                ? Icon(
                                                    Icons.error,
                                                    size: 30,
                                                  )
                                                : CachedNetworkImage(
                                                    imageUrl: HTTP_STRING +
                                                        _appAssetsList[index]
                                                            .image,
                                                    placeholder:
                                                        (context, url) =>
                                                            Icon(Icons.error),
                                                    errorWidget:
                                                        (context, url, error) =>
                                                            Icon(Icons.error),
                                                    height: 30,
                                                  ),
                                            Row(
                                              children: [
                                                Text(
                                                  _appAssetsList[index].code,
                                                  style: _appAssetsList[index]
                                                          .supported
                                                      ? Theme.of(context)
                                                          .textTheme
                                                          .headline4
                                                      : Theme.of(context)
                                                          .textTheme
                                                          .subtitle2,
                                                ),
                                                _appAssetsList[index].liked
                                                    ? Icon(Icons
                                                        .favorite_outline_rounded)
                                                    : Container()
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  _appAssetsList[index]
                                                      .currentPriceUSD
                                                      .toStringAsFixed(2),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline4,
                                                ),
                                                Text(
                                                  _appAssetsList[index]
                                                      .changeUSD24
                                                      .toStringAsFixed(2),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline4,
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                            childCount: _appAssetsList.length),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
