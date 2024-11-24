import 'DienThoai.dart';
import 'HoaDon.dart';

void main() {
  // Tạo một vài điện thoại mẫu
  var dienThoai1 = DienThoai('DT-001','iPhone 14 Pro','Apple',25000000, 30000000,10, true, );

  var dienThoai2 = DienThoai('DT-002','Samsung Galaxy S23','Samsung',2000000, 25000000,5, true,);

  var dienThoai3 = DienThoai('DT-003','Xiaomi Redmi Note 12','Xiaomi',7000000,8500000,15,false,);

  // Hiển thị thông tin các điện thoại
  print('--- Danh sách điện thoại ---');
  dienThoai1.hienThiThongTin();
  print('----------------------------');
  dienThoai2.hienThiThongTin();
  print('----------------------------');
  dienThoai3.hienThiThongTin();

  // Kiểm tra lợi nhuận dự kiến
  print('\n--- Lợi nhuận dự kiến ---');
  print('${dienThoai1.tenDienThoai}: ${dienThoai1.tinhLoiNhuanDuKien()} VND');
  print('${dienThoai2.tenDienThoai}: ${dienThoai2.tinhLoiNhuanDuKien()} VND');
  print('${dienThoai3.tenDienThoai}: ${dienThoai3.tinhLoiNhuanDuKien()} VND');

  // Kiểm tra trạng thái có thể bán
  print('\n--- Trạng thái bán ---');
  print('${dienThoai1.tenDienThoai}: ${dienThoai1.coTheBan() ? 'Có thể bán' : 'Không thể bán'}');
  print('${dienThoai2.tenDienThoai}: ${dienThoai2.coTheBan() ? 'Có thể bán' : 'Không thể bán'}');
  print('${dienThoai3.tenDienThoai}: ${dienThoai3.coTheBan() ? 'Có thể bán' : 'Không thể bán'}');

  // Tạo một hóa đơn mẫu
  var hoaDon1 = HoaDon('HD-001',DateTime.now(),dienThoai1,2,29000000,'Nguyễn Văn A','0901234567',);

  // Cập nhật tồn kho sau khi tạo hóa đơn
  dienThoai1.soLuongTon = hoaDon1.soLuongMua;

  // Hiển thị thông tin hóa đơn
  print('\n--- Hóa đơn bán hàng ---');
  hoaDon1.hienThiThongTin();

  // Kiểm tra tồn kho sau khi bán
  print('\n--- Tồn kho sau khi bán ---');
  dienThoai1.hienThiThongTin();

  // Tạo thêm hóa đơn không hợp lệ (để kiểm tra lỗi)
  try {
    var hoaDon2 = HoaDon('HD-002',DateTime.now(),dienThoai2,10,24000000,'Trần Thị B','0909876543',);
  } catch (e) {
    print('\n--- Lỗi khi tạo hóa đơn ---');
    print(e);
  }

  // Tạo thêm hóa đơn hợp lệ
  var hoaDon3 = HoaDon('HD-003',DateTime.now(),dienThoai2,3,24000000,'Lê Văn C','0987654321',);

  // Cập nhật tồn kho sau khi bán
  dienThoai2.soLuongTon = hoaDon3.soLuongMua;

  // Hiển thị hóa đơn mới
  print('\n--- Hóa đơn mới ---');
  hoaDon3.hienThiThongTin();

  // Thống kê doanh thu và lợi nhuận từ hóa đơn
  print('\n--- Thống kê doanh thu và lợi nhuận ---');
  var doanhThu1 = hoaDon1.tinhTongTien();
  var loiNhuan1 = hoaDon1.tinhLoiNhuanThucTe();

  var doanhThu3 = hoaDon3.tinhTongTien();
  var loiNhuan3 = hoaDon3.tinhLoiNhuanThucTe();

  print('Doanh thu hóa đơn 1: $doanhThu1 VND, Lợi nhuận: $loiNhuan1 VND');
  print('Doanh thu hóa đơn 3: $doanhThu3 VND, Lợi nhuận: $loiNhuan3 VND');

  // Tổng doanh thu và lợi nhuận
  var tongDoanhThu = doanhThu1 + doanhThu3;
  var tongLoiNhuan = loiNhuan1 + loiNhuan3;
  print('Tổng doanh thu: $tongDoanhThu VND');
  print('Tổng lợi nhuận: $tongLoiNhuan VND');
}

