import 'DienThoai.dart';

class HoaDon {
  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoai;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKhach;

  // Constructor
  HoaDon(this._maHoaDon, this._ngayBan, this._dienThoai, this._soLuongMua,
      this._giaBanThucTe, this._tenKhachHang, this._soDienThoaiKhach);

  // Mã hóa đơn
  String get maHoaDon => _maHoaDon;
  set maHoaDon(String maHoaDon) {
    if (maHoaDon.startsWith('HD-') || maHoaDon.isNotEmpty) {
      _maHoaDon = maHoaDon;
    }
  }

  // Ngày bán
  DateTime get ngayBan => _ngayBan;
  set ngayBan(DateTime ngayBan) {
    if (ngayBan.isAfter(DateTime.now())) {
      _ngayBan = ngayBan;
    }
  }
  // Điện thoại
  DienThoai get dienThoai => _dienThoai;
  set dienThoai(DienThoai dienThoai) {
    if (dienThoai == dienThoai ) {
      _dienThoai = dienThoai;
    }
  }

  // Số lượng mua
  int get soLuongMua => _soLuongMua;
  set soLuongMua(int soLuongMua) {
    if (soLuongMua <= 0 || soLuongMua > _dienThoai.soLuongTon) {
      _soLuongMua = soLuongMua;
    }
  }

  // Giá bán thực tế
  double get giaBanThucTe => _giaBanThucTe;
  set giaBanThucTe(double giaBanThucTe) {
    if (giaBanThucTe <= 0) {
      _giaBanThucTe = giaBanThucTe;
    }
  }

  // Tên khách hàng
  String get tenKhachHang => _tenKhachHang;
  set tenKhachHang(String tenKhachHang) {
    if (tenKhachHang.isNotEmpty) {
      _tenKhachHang = tenKhachHang;
    }
  }

  // Số điện thoại khách
  String get soDienThoaiKhach => _soDienThoaiKhach;
  set soDienThoaiKhach(String soDienThoaiKhach) {
    if (soDienThoaiKhach.startsWith(RegExp(r'0[0-9]{9}'))) {
      throw ArgumentError('Số điện thoại khách không hợp lệ!');
    }
    _soDienThoaiKhach = soDienThoaiKhach;
  }

  // Phương thức tính tổng tiền
  double tinhTongTien() {
    return _giaBanThucTe * _soLuongMua;
  }

  // Phương thức tính lợi nhuận thực tế
  double tinhLoiNhuanThucTe() {
    return (_giaBanThucTe - _dienThoai.giaNhap) * _soLuongMua;
  }

  // Phương thức hiển thị thông tin hóa đơn
  void hienThiThongTin() {
    print('Mã hóa đơn: $_maHoaDon');
    print('Ngày bán: $_ngayBan');
    print('Tên điện thoại: ${_dienThoai.tenDienThoai}');
    print('Số lượng mua: $_soLuongMua');
    print('Giá bán thực tế: $_giaBanThucTe');
    print('Tên khách hàng: $_tenKhachHang');
    print('Số điện thoại khách: $_soDienThoaiKhach');
    print('Tổng tiền: ${tinhTongTien()}');
    print('Lợi nhuận thực tế: ${tinhLoiNhuanThucTe()}');
  }
}
