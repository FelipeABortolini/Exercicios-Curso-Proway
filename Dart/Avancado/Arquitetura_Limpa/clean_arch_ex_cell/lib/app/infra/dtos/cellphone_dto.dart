import 'dart:convert';

import '../../domain/entities/cellphone_entities.dart';

class CellphoneDto extends CellphoneEntity {
  String? brandCellphone;
  String? descriptionCellphone;
  int? priceCellphone;
  bool? availableCellphone;

  CellphoneDto({
    this.brandCellphone,
    this.descriptionCellphone,
    this.priceCellphone,
    this.availableCellphone,
  }) : super(
          brand: brandCellphone,
          description: descriptionCellphone,
          price: priceCellphone,
          available: availableCellphone,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(brandCellphone != null){
      result.addAll({'brandCellphone': brandCellphone});
    }
    if(descriptionCellphone != null){
      result.addAll({'descriptionCellphone': descriptionCellphone});
    }
    if(priceCellphone != null){
      result.addAll({'priceCellphone': priceCellphone});
    }
    if(availableCellphone != null){
      result.addAll({'availableCellphone': availableCellphone});
    }
  
    return result;
  }

  factory CellphoneDto.fromMap(Map<String, dynamic> map) {
    return CellphoneDto(
      brandCellphone: map['brandCellphone'],
      descriptionCellphone: map['descriptionCellphone'],
      priceCellphone: map['priceCellphone']?.toInt(),
      availableCellphone: map['availableCellphone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CellphoneDto.fromJson(String source) => CellphoneDto.fromMap(json.decode(source));
}
