import '../BaiTap02/Sach.dart';
import '../BaiTap02/ThuVien.dart';
import '../BaiTap02/DocGia.dart';


void main() {
  // Tạo thư viện
  var thuVien = ThuVien();

  // Tạo sách
  var sach1 = Sach('S001', 'Lập trình Dart', 'Nguyễn Văn A', false);
  var sach2 = Sach('S002', 'Học Flutter', 'Trần Thị B', false);
  var sach3 = Sach('S003', 'Cơ sở dữ liệu', 'Lê Văn C', false);

  // Thêm sách vào thư viện
  thuVien.themSach(sach1);
  thuVien.themSach(sach2);
  thuVien.themSach(sach3);

  // Tạo độc giả
  var docGia1 = DocGia('DG001', 'Nguyễn Văn D');
  var docGia2 = DocGia('DG002', 'Trần Thị E');

  // Thêm độc giả vào thư viện
  thuVien.themDocGia(docGia1);
  thuVien.themDocGia(docGia2);

  // Hiển thị danh sách sách và độc giả
  thuVien.hienThiDanhSachSach();
  thuVien.hienThiDanhSachDocGia();

  // Độc giả mượn sách
  docGia1.muonSach(sach1);
  docGia1.muonSach(sach2);

  // Hiển thị thông tin độc giả sau khi mượn sách
  docGia1.hienThiThongTin();

  // Độc giả trả sách
  docGia1.traSach(sach1);

  // Hiển thị thông tin độc giả sau khi trả sách
  docGia1.hienThiThongTin();

  // Hiển thị trạng thái thư viện
  thuVien.hienThiDanhSachSach();
}
