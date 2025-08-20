
class AppAssets {

  AppAssets._();
  //dossier principal des images
  static const String _images = "assets/images";

  //**constructeur singleton */
  // static final AppAssets _instance = AppAssets._internal();

  // factory AppAssets(){
  //   return _instance;
  // }
  // AppAssets._internal();

  //images produits
  static const String pImage01 = "$_images/NO.1.png";
  static const String pImage02 = "$_images/NO.2.png";
  static const String pImage03 = "$_images/NO.3.png";
  static const String pImage04 = "$_images/NO.4.png";
  static const String pImage05 = "$_images/NO.5.png";
  static const String pImage06 = "$_images/NO.6.png";
  static const String pImage07 = "$_images/NO.7.png";
  static const String pImage08 = "$_images/NO.8.png";
  static const String pImage09 = "$_images/NO.9.png";
  static const String pImage010 = "$_images/NO.10.png";



  static List<String> getAssets(){
    return [
      pImage01,
      pImage02,
      pImage03,
      pImage04,
      pImage05,
      pImage06,
      pImage07,
      pImage08,
      pImage09,
      pImage010
    ];
  }

}