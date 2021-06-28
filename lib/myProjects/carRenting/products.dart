class Product {
  String? _productName;
  String? _productYear;
  String? _productDesc;
  String? _productPic;
  String? _productLogo;

  Product(this._productName, this._productYear, this._productDesc,
      this._productPic,this._productLogo);

  String? get productName => this._productName;
  String? get productYear => this._productYear;
  String? get productDesc => this._productDesc;
  String? get productPic => this._productPic;
  String? get productLogo => this._productLogo;
}
