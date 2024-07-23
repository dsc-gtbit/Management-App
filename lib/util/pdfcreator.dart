import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:salary_slip/models/api_data.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';

Future<void> generatePDF(Employee employee) async {
  final PdfDocument document = PdfDocument();
  final PdfPage page = document.pages.add();
  final Size pageSize = page.getClientSize();

  // Draw the header
  page.graphics.drawString(
    'Salary Invoice',
    PdfStandardFont(PdfFontFamily.helvetica, 24),
    bounds: Rect.fromLTWH(0, 0, pageSize.width, 50),
    format: PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    ),
  );

  // Load the logo image
  final ByteData bytes = await rootBundle
      .load('assets/gtblogo.png'); // Ensure you have a logo in assets folder
  final Uint8List logoBytes = bytes.buffer.asUint8List();
  final PdfBitmap logo = PdfBitmap(logoBytes);

  // Draw the logo
  page.graphics.drawImage(
    logo,
    Rect.fromLTWH(pageSize.width / 2 - 40, 60, 120,
        80), // Adjust the logo position and size as needed
  );

  // Draw the table below the logo
  final PdfGrid grid = PdfGrid();
  grid.columns.add(count: 2);
  grid.headers.add(1);
  final PdfGridRow header = grid.headers[0];
  header.cells[0].value = 'Field';
  header.cells[1].value = 'Value';

  // Add rows
  addRow(grid, 'Sl No', employee.slNo);
  addRow(grid, 'PF Number', employee.pfNumber);
  addRow(grid, 'Name', employee.name);
  addRow(grid, 'Designation', employee.designation);
  addRow(grid, 'Date of Joining', employee.dateOfJoining?.toString());
  addRow(grid, 'New Basic', employee.newBasic);
  addRow(grid, 'Days', employee.days);
  addRow(grid, 'Basic Pay', employee.basicPay);
  addRow(grid, 'AGP', employee.agp);
  addRow(grid, 'DA', employee.da);
  addRow(grid, 'HRA', employee.hra);
  addRow(grid, 'TPT', employee.tpt);
  addRow(grid, 'Other', employee.other);
  addRow(grid, 'Gross', employee.gross);
  addRow(grid, 'Taxes', employee.taxes);
  addRow(grid, 'Gross Deductions', employee.grossdeductions);
  addRow(grid, 'Net', employee.net);
  addRow(grid, 'Total Days', employee.totaldays);
  addRow(grid, 'Days Present', employee.daypresent);
  addRow(grid, 'Days Absent', employee.dayabsent);
  addRow(grid, 'Employee PF', employee.employeepf);
  addRow(grid, 'Advance Loans', employee.advloans);
  addRow(grid, 'Salary in Words', employee.salwords);

  // Apply styles
  final PdfGridCellStyle headerStyle = PdfGridCellStyle(
    borders: PdfBorders(
      left: PdfPen(PdfColor(0, 0, 0)),
      top: PdfPen(PdfColor(0, 0, 0)),
      right: PdfPen(PdfColor(0, 0, 0)),
      bottom: PdfPen(PdfColor(0, 0, 0)),
    ),
    backgroundBrush: PdfBrushes.gray,
    textBrush: PdfBrushes.white,
    font:
        PdfStandardFont(PdfFontFamily.helvetica, 12, style: PdfFontStyle.bold),
  );

  final PdfGridCellStyle cellStyle = PdfGridCellStyle(
    borders: PdfBorders(
      left: PdfPen(PdfColor(0, 0, 0)),
      top: PdfPen(PdfColor(0, 0, 0)),
      right: PdfPen(PdfColor(0, 0, 0)),
      bottom: PdfPen(PdfColor(0, 0, 0)),
    ),
    font: PdfStandardFont(PdfFontFamily.helvetica, 12),
  );

  for (int i = 0; i < header.cells.count; i++) {
    header.cells[i].style = headerStyle;
  }

  for (int i = 0; i < grid.rows.count; i++) {
    final PdfGridRow row = grid.rows[i];
    for (int j = 0; j < row.cells.count; j++) {
      row.cells[j].style = cellStyle;
    }
  }

  // Draw the grid
  grid.draw(
    page: page,
    bounds: Rect.fromLTWH(0, 160, pageSize.width, pageSize.height - 140),
  );

  if (await Permission.manageExternalStorage.request().isGranted) {
    final List<int> byte = document.saveSync();
    document.dispose();

    final String path = (await getDownloadsDirectory())!.path;
    final String fileName = '$path/SalaryInvoice.pdf';
    final File file = File(fileName);
    await file.writeAsBytes(byte, flush: true);

    print('PDF generated and saved at $fileName');
  } else {}
}

void addRow(PdfGrid grid, String field, String? value) {
  final PdfGridRow row = grid.rows.add();
  row.cells[0].value = field;
  row.cells[1].value = value ?? '';
}
