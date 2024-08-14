import 'package:prisma_filter_paramaters_generator/models/categories/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/collectors/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/common/field/field.model.dart';
import 'package:prisma_filter_paramaters_generator/models/economical_activities/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/localities/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/personal_status/structure/structure.model.dart';

class CustomerStructure {
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

  static Field occupation = Field(
    front: 'Profession',
    back: 'occupation',
    type: String,
    isNullable: true,
    isRelation: false,
  );

  static Field nicNumber = Field(
    front: 'CNI/NPI',
    back: 'nicNumber',
    type: int,
    isNullable: true,
    isRelation: false,
  );

  static Field collector = Field(
    front: 'Collecteur',
    back: 'collector',
    type: String,
    isNullable: true,
    isRelation: true,
    fields: CollectorStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field locality = Field(
    front: 'Localité',
    back: 'locality',
    type: String,
    isNullable: true,
    isRelation: true,
    fields: LocalityStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field category = Field(
    front: 'Catégorie',
    back: 'category',
    type: String,
    isNullable: true,
    isRelation: true,
    fields: CategoryStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field economicalActivity = Field(
    front: 'Activité Économique',
    back: 'economicalActivity',
    type: String,
    isNullable: true,
    isRelation: true,
    fields: EconomicalActivityStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field personalStatus = Field(
    front: 'Statut Personnel',
    back: 'personalStatus',
    type: String,
    isNullable: true,
    isRelation: true,
    fields: PersonalStatusStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field profile = Field(
    front: 'Profil',
    back: 'profile',
    type: String,
    isNullable: true,
    isRelation: false,
  );

  static Field signature = Field(
    front: 'Signature',
    back: 'signature',
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
    occupation,
    nicNumber,
    collector,
    locality,
    category,
    economicalActivity,
    personalStatus,
    createdAt,
    updatedAt,
  ];
}