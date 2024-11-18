import '../BaiTap02/Sach.dart';
import '../BaiTap02/DocGia.dart';


class ThuVien {
  List<Sach> danhSachSach = [];
  List<DocGia> danhSachDocGia = [];

  void themSach(Sach sach) {
    danhSachSach.add(sach);
    print('Đã thêm sách "${sach.tenSach}".');
  }

  void themDocGia(DocGia docGia) {
    danhSachDocGia.add(docGia);
    print('Đã thêm độc giả "${docGia.hoTen}".');
  }

  void hienThiDanhSachSach() {
    print('Danh sách sách trong thư viện:');
    for (var sach in danhSachSach) {
      sach.hienThiThongTin();
    }
  }

  void hienThiDanhSachDocGia() {
    print('Danh sách độc giả:');
    for (var docGia in danhSachDocGia) {
      docGia.hienThiThongTin();
    }
  }
}