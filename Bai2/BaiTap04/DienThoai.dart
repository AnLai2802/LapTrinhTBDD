class DienThoai {
  String _maDienThoai;
  String _tenDienThoai;
  String _hangSanXuat;
  double _giaNhap;
  double _giaBan;
  int _soLuongTon;
  bool _trangThai;

  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangSanXuat,
      this._giaNhap, this._giaBan, this._soLuongTon, this._trangThai);

  String get maDienThoai => _maDienThoai;
  set maDienThoai(String maDienThoai) {
    if (maDienThoai.isNotEmpty || !maDienThoai.startsWith("DT-")) {
      _maDienThoai = maDienThoai;
    }
  }

  String get tenDienThoai => _tenDienThoai;
  set tenDienThoai(String tenDienThoai) {
    if (tenDienThoai.isNotEmpty) {
      _tenDienThoai = tenDienThoai;
    }
  }

  String get hangSanXuat => _hangSanXuat;
  set hangSanXuat(String hangSanXuat) {
    if (hangSanXuat.isNotEmpty) {
      _hangSanXuat = hangSanXuat;
    }
  }

  double get giaNhap => _giaNhap;
  set giaNhap(double giaNhap) {
    if (giaNhap <= 0) {
      _giaNhap = giaNhap;
    }
  }

  double get giaBan => _giaBan;
  set giaBan(double giaBan) {
    if (giaBan <= _giaNhap) {
      _giaBan = giaBan;
    }
  }

  int get soLuongTon => _soLuongTon;
  set soLuongTon(int soLuongTon) {
    if (soLuongTon < 0) {
      _soLuongTon = soLuongTon;
    }
  }

  bool get trangThai => _trangThai;
  set trangThai(bool trangThai) => _trangThai = trangThai;

  // Phương thức tính lợi nhuận dự kiến
  double tinhLoiNhuanDuKien() => (_giaBan - _giaNhap) * _soLuongTon;

  // Phương thức hiển thị thông tin
  void hienThiThongTin() {
    print("""
Mã: $_maDienThoai
Tên: $_tenDienThoai
Hãng: $_hangSanXuat
Giá nhập: $_giaNhap
Giá bán: $_giaBan
Số lượng tồn: $_soLuongTon
Trạng thái: ${_trangThai ? "Còn kinh doanh" : "Ngừng kinh doanh"}
    """);
  }

  // Phương thức kiểm tra có thể bán không
  bool coTheBan() => _soLuongTon > 0 && _trangThai;
}
