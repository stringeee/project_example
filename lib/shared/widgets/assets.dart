enum Assets { appLogo }

const _imageAssetsLocation = "assets/images/";

extension GetAsset on Assets {
  String get getAssetUrl {
    switch (this) {
      case Assets.appLogo:
        return _imageAssetsLocation + "clubLogo.png";
    }
  }
}
