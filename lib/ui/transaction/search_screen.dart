import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:cointrack/data/models/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _filter = TextEditingController();

  String _searchText = '';
  List<BaseAsset> _assets = [];
  List<BaseAsset> _appAssetsList = [];

  _SearchScreenState() {
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
    _assets = BlocProvider.of<AssetsCubit>(context).state.assets;
    if (_searchText.isNotEmpty) {
      List<BaseAsset> tempList = [];
      for (int i = 0; i < _assets.length; i++) {
        if (_assets[i].code.startsWith(_searchText)) {
          tempList.add(_assets[i]);
        }
      }
      _appAssetsList = tempList;
    } else
      _appAssetsList = _assets;

    return BlocBuilder<AssetsCubit, AssetsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: MediaQuery.of(context).size.height * .05,
            title: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5,
                    controller: _filter,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.white),
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
                              Navigator.pop(
                                  context, _appAssetsList[index].code);
                            },
                            child: Card(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Text(
                                  _appAssetsList[index].code,
                                  style: Theme.of(context).textTheme.headline4,
                                ),
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
    );
  }
}
