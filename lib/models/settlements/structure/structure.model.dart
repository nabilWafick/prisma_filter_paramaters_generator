import 'package:prisma_filter_paramaters_generator/models/agents/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/cards/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/collections/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/common/field/field.model.dart';

class SettlementStructure {
  static Field id = Field(
    front: 'ID',
    back: 'id',
    type: int,
    isNullable: false,
    isRelation: false,
  );

  static Field number = Field(
    front: 'Nombre',
    back: 'number',
    type: int,
    isNullable: false,
    isRelation: false,
  );

  static Field isValidated = Field(
    front: 'Est Validé',
    back: 'isValidated',
    type: bool,
    isNullable: false,
    isRelation: false,
  );

  static Field card = Field(
    front: 'Carte',
    back: 'card',
    type: String,
    isNullable: false,
    isRelation: true,
    fields: CardStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field collection = Field(
    front: 'Collecte',
    back: 'collection',
    type: String,
    isNullable: true,
    isRelation: true,
    fields: CollectionStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field agent = Field(
    front: 'Agent',
    back: 'agent',
    type: String,
    isNullable: true,
    isRelation: false,
    fields: AgentStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
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
    number,
    isValidated,
    card,
    collection,
    agent,
    createdAt,
    updatedAt,
  ];
}
