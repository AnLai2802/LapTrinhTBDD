class Sach {
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool trangThaiMuon; // true: đã mượn, false: chưa mượn

  Sach(this._maSach, this._tenSach, this._tacGia, this.trangThaiMuon) {}

  // Getter và Setter
  String get maSach => _maSach;

  set maSach(String maSach) {
    if (maSach.isNotEmpty) {
      _maSach = maSach;
    }
  }

  String get tenSach => _tenSach;

  set tenSach(String tenSach) {
    if (tenSach.isNotEmpty) {
      _tenSach = tenSach;
    }
  }

  String get tacGia => _tacGia;

  set tacGia(String tacGia) {
    if (tacGia.isEmpty) {
      _tacGia = tacGia;
    }
  }

  void hienThiThongTin() {
    print(
        'Mã sách: $_maSach, Tên sách: $_tenSach, Tác giả: $_tacGia, Trạng thái: ${trangThaiMuon ? "Đã mượn" : "Chưa mượn"}');
  }
}
