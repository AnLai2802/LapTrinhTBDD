class Sinhvien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;

//Constructor
  Sinhvien(this._hoTen, this._tuoi, this._maSV, this._diemTB);

  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  set tuoi(int tuoi) {
    if (tuoi > 0) {
      _tuoi = tuoi;
    }
  }

  set maSV(String maSV) {
    if (maSV.isNotEmpty) {
      _maSV = maSV;
    }
  }

  set diemTB(double diemTB) {
    if (diemTB < 10 && 10 >= diemTB) {
      _diemTB = diemTB;
    }
  }

  void hienThiThongTin() {
    print('Ho ten:  $_hoTen');
    print('Tuoi:  $tuoi');
    print('ma sinh vien:  $_maSV');
    print('diem trung binh:  $_diemTB');
  }

  String xepLoai() {
    if (_diemTB >= 8) {
      return "Giỏi";
    } else if (_diemTB >= 6.5) {
      return "Khá";
    } else if (_diemTB >= 5) {
      return "Trung bình";
    } else {
      return "Yếu";
    }
  }
}

class Lophoc {
  String _tenLop;
  List<Sinhvien> _danhSachSV = [];

  Lophoc(this._tenLop);

  String get tenLop => _tenLop;
  List<Sinhvien> get danhSachSV => _danhSachSV;

  set tenLop(String tenLop) {
    if (tenLop.isNotEmpty) {
      _tenLop = tenLop;
    }
  }

  void themSinhVien(Sinhvien sv) => _danhSachSV.add(sv);

  void hienthiDanhSach() {
    print('\nDanh sach sinh vien lop: $_tenLop');
    for (var sv in _danhSachSV) {
      sv.hienThiThongTin();
      print('xep loai: ${sv.xepLoai()}');
    }
  }
}

void main() {
  var sv = Sinhvien('Ly An Lai', 21, '2180607679', 8.5);
  print('Test getter: ${sv._hoTen}');
  sv._hoTen = 'Ly An Laio';
  print('Sau khi set: ${sv._hoTen}');
  print('Xep loai: ${sv.xepLoai()}');

  var lop = Lophoc('21DTHD5');
  lop.themSinhVien(Sinhvien('naf sf fs', 23, '3242343242', 4.4));
  lop.themSinhVien(Sinhvien('naf sf fs', 23, '3242343242', 4.4));
  lop.hienthiDanhSach();
}
