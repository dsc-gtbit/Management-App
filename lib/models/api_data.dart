class Employee {
  int? slNo;
  int? pfNo;
  String? name;
  String? designation;
  DateTime? dateOfJoining;
  int? newBasic;
  int? days;
  int? basicPay;
  int? agp;
  int? da;
  int? hra;
  int? tpt;
  String? other;
  String? gross;
  int? deductions;
  int? total;
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
    slNo: json['Sl.No.'] as int?,
    pfNo: json['PF No.'] as int?,
    name: json['Name'] as String?,
    designation: json['Designation'] as String?,
    dateOfJoining: DateTime.parse(json['Date Of Joining'] as String),
    newBasic: json['New Basic'] as int?,
    days: json['Days'] as int?,
    basicPay: json['Basic pay'] as int?,
    agp: json['AGP'] as int?,
    da: json['D.A.'] as int?,
    hra: json['H.R.A'] as int?,
    tpt: json['TPT.'] as int?,
    other: json['Other'] as String?,
    gross: json['Gross'] is int ? json['Gross'].toString() : json['Gross'] as String?,
    deductions: json['Deductions'] as int?,
    total: json['Total'] as int?,
    net: json['Net'] is int ? json['Net'].toString() : json['Net'] as String?,
  );
  }
}
