import 'package:prisma_filter_paramaters_generator/models/common/field/field.model.dart';
import 'package:prisma_filter_paramaters_generator/models/customers/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/types/structure/structure.model.dart';

class CardStructure {
  static Field id = Field(
    front: 'ID',
    back: 'id',
    type: int,
    isNullable: false,
    isRelation: false,
  );

  static Field label = Field(
    front: 'Libellé',
    back: 'label',
    type: String,
    isNullable: false,
    isRelation: false,
  );

  static Field type = Field(
    front: 'Type',
    back: 'type',
    type: String,
    isNullable: false,
    isRelation: true,
    fields: TypeStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field typesNumber = Field(
    front: 'Nombre Type',
    back: 'typesNumber',
    type: int,
    isNullable: false,
    isRelation: false,
  );

  static Field customer = Field(
    front: 'Client',
    back: 'customer',
    type: String,
    isNullable: false,
    isRelation: true,
    fields: CustomerStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field repaidAt = Field(
    front: 'Date de Remboursement',
    back: 'repaidAt',
    type: DateTime,
    isNullable: true,
    isRelation: false,
  );

  static Field satisfiedAt = Field(
    front: 'Date de Satisfaction',
    back: 'satisfiedAt',
    type: DateTime,
    isNullable: true,
    isRelation: false,
  );

  static Field transferredAt = Field(
    front: 'Date de Transfert',
    back: 'transferredAt',
    type: DateTime,
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
    label,
    type,
    typesNumber,
    customer,
    repaidAt,
    satisfiedAt,
    transferredAt,
    createdAt,
    updatedAt,
  ];
}
