import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang {
  String tenCuaHang;
  String diaChi;
  List<DienThoai> danhSachDienThoai = [];
  List<HoaDon> danhSachHoaDon = [];

  CuaHang(this.tenCuaHang, this.diaChi);

  // Thêm điện thoại mới
  void themDienThoai(DienThoai dienThoai) {
    danhSachDienThoai.add(dienThoai);
    print('Đã thêm điện thoại: ${dienThoai.tenDienThoai}');
  }

  // Hiển thị danh sách điện thoại
  void hienThiDanhSachDienThoai() {
    print('Danh sách điện thoại trong cửa hàng:');
    for (var dienThoai in danhSachDienThoai) {
      dienThoai.hienThiThongTin();
      print('---');
    }
  }

  // Tạo hóa đơn mới
  void taoHoaDon(HoaDon hoaDon) {
    if (hoaDon.dienThoai.coTheBan() && hoaDon.soLuongMua <= hoaDon.dienThoai.soLuongTon) {
      danhSachHoaDon.add(hoaDon);
      hoaDon.dienThoai.soLuongTon -= hoaDon.soLuongMua;
      print('Hóa đơn đã được tạo!');
    } else {
      print('Không thể tạo hóa đơn. Kiểm tra tồn kho hoặc trạng thái kinh doanh!');
    }
  }

  // Thống kê doanh thu theo thời gian
  double tinhDoanhThu(DateTime tuNgay, DateTime denNgay) {
    return danhSachHoaDon
        .where((hd) => hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay))
        .map((hd) => hd.tinhTongTien())
        .reduce((a, b) => a + b);
  }
}
