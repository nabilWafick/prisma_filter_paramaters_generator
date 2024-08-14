import 'package:prisma_filter_paramaters_generator/models/common/field/field.model.dart';

class CollectorStructure {
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

  static Field firstnames = Field(
    front: 'Prénoms',
    back: 'firstnames',
    type: String,
    isNullable: false,
    isRelation: false,
  );

  static Field phoneNumber = Field(
    front: 'Téléphone',
    back: 'phoneNumber',
    type: String,
    isNullable: false,
    isRelation: false,
  );

  static Field address = Field(
    front: 'Adresse',
    back: 'address',
    type: String,
    isNullable: false,
    isRelation: false,
  );

  static Field profile = Field(
    front: 'Profil',
    back: 'profile',
    type: String,
    isNullable: true,
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
    firstnames,
    phoneNumber,
    address,
    profile,
    createdAt,
    updatedAt,
  ];
}