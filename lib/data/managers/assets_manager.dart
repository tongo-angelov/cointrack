import 'package:cointrack/data/models/asset.dart';
import 'package:cointrack/mock/export.dart';
import 'package:cointrack/utils/hive_constants.dart';
import 'package:hive/hive.dart';

abstract class AssetsDatabaseManager {
  List<BaseAsset> getAssets();
  void saveAssets(List<BaseAsset> assets);
  List<BaseAsset> likeAsset(String asset);
}

class HiveAssetsDatabaseManager implements AssetsDatabaseManager {
  final _box = Hive.box<List>(ASSETS_BOX);

  @override
  List<BaseAsset> getAssets() {
    List<BaseAsset> assets = [];
    try {
      assets = _box.get(ASSETS_BOX)!.cast<BaseAsset>();
    } catch (e) {
      assets = _getHardcodedAssets();
    }
    saveAssets(assets);
    return assets;
  }

  @override
  List<BaseAsset> likeAsset(String code) {
    List<BaseAsset> assets = _box.get(ASSETS_BOX)!.cast<BaseAsset>();
    int index = assets.indexWhere((element) => element.code == code);
    assets[index] = assets[index].copyWith(liked: !assets[index].liked);
    saveAssets(assets);
    return assets;
  }

  void saveAssets(List<BaseAsset> assets) {
    _box.put(ASSETS_BOX, assets);
  }

  List<BaseAsset> _getHardcodedAssets() {
    List<BaseAsset> assets = [];
    exported.forEach((asset) {
      assets.add(BaseAsset.fromJson(asset.values.first));
    });
    return assets;
  }
}
