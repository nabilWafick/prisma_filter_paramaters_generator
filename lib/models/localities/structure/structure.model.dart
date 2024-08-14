import 'package:prisma_filter_paramaters_generator/models/common/field/field.model.dart';

class LocalityStructure {
  static Field id = Field(
    front: 'ID',
    back: 'id',
    type: int,
    isNullable: false,
    isRelation: false,
  );

  static Field name = Field(
    front: 'Nom',
    back: 'name',
    type: String,
    isNullable: false,
    isRelation: false,
  );

  static Field createdAt = Field(
    front: 'Insertion',
    back: 'createdAt',
    type: DateTime,
    isNullable: false,
    isRelation: false,
  );

  static Field updatedAt = Field(
    front: 'Dernière Modification',
    back: 'updatedAt',
    type: DateTime,
    isNullable: false,
    isRelation: false,
  );

  static List<Field> fields = [
    id,
    name,
    createdAt,
    updatedAt,
  ];
}
