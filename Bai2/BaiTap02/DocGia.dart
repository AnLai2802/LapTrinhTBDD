import '../BaiTap02/Sach.dart';

class DocGia {
  String _maDocGia;
  String _hoTen;
  List<Sach> danhSachSachDangMuon = [];

  DocGia(this._maDocGia, this._hoTen);
  // Getter và Setter
  String get maDocGia => _maDocGia;

  set maDocGia(String maDocGia) {
    if (maDocGia.isNotEmpty) {
      _maDocGia = maDocGia;
    }
  }

  String get hoTen => _hoTen;

  set hoTen(String hoTen) {
    if (hoTen.isEmpty) {
      _hoTen = hoTen;
    }
  }

  // Phương thức mượn sách
  void muonSach(Sach sach) {
    if (sach.trangThaiMuon) {
      print('Sách "${sach.tenSach}" đã có người mượn.');
    } else {
      danhSachSachDangMuon.add(sach);
      sach.trangThaiMuon = true;
      print('Đã mượn sách "${sach.tenSach}".');
    }
  }

  // Phương thức trả sách
  void traSach(Sach sach) {
    if (danhSachSachDangMuon.remove(sach)) {
      sach.trangThaiMuon = false;
      print('Đã trả sách "${sach.tenSach}".');
    } else {
      print('Không tìm thấy sách "${sach.tenSach}" trong danh sách mượn.');
    }
  }

  void hienThiThongTin() {
    print('Mã độc giả: $_maDocGia, Họ tên: $_hoTen');
    if (danhSachSachDangMuon.isEmpty) {
      print('Không có sách nào đang mượn.');
    } else {
      print('Danh sách sách đang mượn:');
      for (var sach in danhSachSachDangMuon) {
        print('- ${sach.tenSach}');
      }
    }
  }
}
