import 'package:flutter/material.dart';
import 'package:rpg/models/character.dart';
import 'package:rpg/shared/styledtext.dart';
import 'package:rpg/theme.dart';

class StatTable extends StatefulWidget {
  const StatTable(this.character, {super.key});
  final Character character;

  @override
  State<StatTable> createState() => _StatTableState();
}

class _StatTableState extends State<StatTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            color: AppColors.secondaryColor,
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: widget.character.points > 0
                      ? AppColors.highlightColor
                      : AppColors.textColor,
                ),
                const SizedBox(width: 20),
                const Styledheading('Stat Points '),
                Expanded(child: const SizedBox(width: 20)),
                Styledheading(widget.character.points.toString()),
                const SizedBox(width: 10),
              ],
            ),
          ),
          Table(
            children: widget.character.StatasFormattedList.map(
              (stat){
                return TableRow(
                  decoration : BoxDecoration(color: Colors.grey[850]),
                  children :[
                    
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(padding: EdgeInsets.all(8),
                    child: Styledheading(stat['title']!)),
                    ),
                    
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,child: Padding(padding: EdgeInsets.all(8),
                    child: Styledheading(stat['value']!)),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(padding:EdgeInsets.all(8),
                    child:IconButton(onPressed:  () {
                     setState(() {
                       widget.character.increaseStat(stat['title']!);
                     }); 
                    }, icon: Icon(Icons.arrow_upward,color: AppColors.textColor) 
                                 ))),                 
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(padding:EdgeInsets.all(8),
                    child:IconButton(onPressed:  () {
                      setState(() {
                        widget.character.decreseStat(stat['title']!);
                      });
                      
                    }, icon: Icon(Icons.arrow_downward,color: AppColors.textColor) 
                                 ))),                 ]
                    
                  
                );
              }
            ).toList(),
          )
        ],
      ),
    );
  }
}
