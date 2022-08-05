import 'package:dashboard_responsive_flutter/views/widgets/check_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/recent_file_model.dart';
import '../../../../models/theme_style_mobdel.dart';
import '../../../widgets/data_cell_text_widget.dart';
import '../../../widgets/data_table_label.dart';
import '../../../widgets/title_button_widget.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
    this.margin,
  }) : super(key: key);

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    final List<RecentFile> demoRecentFiles = [
      RecentFile(
        icon: "assets/icons/xd_file.svg",
        title: "XD File",
        date: "01-03-2021",
        size: "3.5mb",
      ),
      RecentFile(
        icon: "assets/icons/Figma_file.svg",
        title: "Figma File",
        date: "27-02-2021",
        size: "19.0mb",
      ),
      RecentFile(
        icon: "assets/icons/doc_file.svg",
        title: "Documetns",
        date: "23-02-2021",
        size: "32.5mb",
      ),
      RecentFile(
        icon: "assets/icons/sound_file.svg",
        title: "Sound File",
        date: "21-02-2021",
        size: "3.5mb",
      ),
      RecentFile(
        icon: "assets/icons/media_file.svg",
        title: "Media File",
        date: "23-02-2021",
        size: "2.5gb",
      ),
      RecentFile(
        icon: "assets/icons/pdf_file.svg",
        title: "Sals PDF",
        date: "25-02-2021",
        size: "3.5mb",
      ),
      RecentFile(
        icon: "assets/icons/excle_file.svg",
        title: "Excel File",
        date: "25-02-2021",
        size: "34.5mb",
      ),
      RecentFile(
        icon: "assets/icons/excle_file.svg",
        title: "Excel File",
        date: "25-02-2021",
        size: "34.5mb",
      ),
      RecentFile(
        icon: "assets/icons/excle_file.svg",
        title: "Excel File",
        date: "25-02-2021",
        size: "34.5mb",
      ),
    ];

    return Container(
      width: double.infinity,
      margin: margin,
      padding: EdgeInsets.all(ThemeStyleDark.padding),
      decoration: BoxDecoration(
        color: ThemeStyleDark.surface70,
        borderRadius:
            BorderRadius.all(Radius.circular(ThemeStyleDark.radius * 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TitleButton(title: 'Recent Files'),
          DataTable(
            columnSpacing: 10,
            horizontalMargin: 0,
            dataRowHeight: 50,
            columns: const [
              DataColumn(
                label: DataTableLabel(label: 'File Name'),
              ),
              DataColumn(
                label: DataTableLabel(label: 'Date'),
              ),
              DataColumn(
                label: DataTableLabel(label: 'Size'),
              ),
            ],
            rows: List.generate(
              demoRecentFiles.length,
              (index) => itemFileRecent(demoRecentFiles[index]),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow itemFileRecent(RecentFile file) {
  return DataRow(
    selected: false,
    cells: [
      DataCell(
        Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: CheckCondition(
                  exception: file.icon != null,
                  ifTrue: SvgPicture.asset(file.icon.toString())),
            ),
            const SizedBox(width: 10),
            DataCellText(text: file.title ?? ''),
          ],
        ),
      ),
      DataCell(
        DataCellText(text: file.date ?? ''),
      ),
      DataCell(
        DataCellText(text: file.size ?? ''),
      ),
    ],
  );
}
