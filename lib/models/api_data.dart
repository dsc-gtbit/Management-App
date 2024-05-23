class Employee {
  String? slNo;
  String? pfNo;
  String? name;
  String? designation;
  DateTime? dateOfJoining;
  String? newBasic;
  String? days;
  String? basicPay;
  String? agp;
  String? da;
  String? hra;
  String? tpt;
  String? other;
  String? gross;
  String? deductions;
  String? total;
  String? net;

  Employee({
    this.slNo,
    this.pfNo,
    this.name,
    this.designation,
    this.dateOfJoining,
    this.newBasic,
    this.days,
    this.basicPay,
    this.agp,
    this.da,
    this.hra,
    this.tpt,
    this.other,
    this.gross,
    this.deductions,
    this.total,
    this.net,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
    slNo: json['Sl.No.']as String?,
    pfNo: json['PF No.']as String?,
    name: json['Name'] as String?,
    designation: json['Designation'] as String?,
    dateOfJoining: DateTime.parse(json['Date Of Joining'] as String),
    newBasic: json['New Basic']as String?,
    days: json['Days']as String?,
    basicPay: json['Basic pay']as String?,
    agp: json['AGP']as String?,
    da: json['D.A.']as String?,
    hra: json['H.R.A']as String?,
    tpt: json['TPT.']as String?,
    other: json['Other'] as String?,
    gross: json['Gross'] is int ? json['Gross'].toString() : json['Gross'] as String?,
    deductions: json['Deductions']as String?,
    total: json['Total']as String?,
    net: json['Net'] is int ? json['Net'].toString() : json['Net'] as String?,
  );
  }
}
