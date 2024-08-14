import 'package:prisma_filter_paramaters_generator/models/agents/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/cards/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/common/field/field.model.dart';

class TransferStructure {
  static Field id = Field(
    front: 'ID',
    back: 'id',
    type: int,
    isNullable: false,
    isRelation: false,
  );

  static Field issuingCard = Field(
    front: 'Carte Émettrice',
    back: 'issuingCard',
    type: String,
    isNullable: false,
    isRelation: true,
    fields: CardStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field receivingCard = Field(
    front: 'Carte Réceptrice',
    back: 'recevingCard',
    type: String,
    isNullable: false,
    isRelation: true,
    fields: CardStructure.fields
        .where(
          (field) => field.back != 'id',
// structure will help to facilitate sort, filter, and data filelds use case
        )
        .toList(),
  );

  static Field agent = Field(
    front: 'Agent',
    back: 'agent',
    type: String,
    isNullable: false,
    isRelation: true,
    fields: AgentStructure.fields
        .where(
          (field) => field.back != 'id',
        )
        .toList(),
  );

  static Field validatedAt = Field(
    front: 'Validation',
    back: 'validatedAt',
    type: DateTime,
    isNullable: true,
    isRelation: false,
  );

  static Field rejectedAt = Field(
    front: 'Rejet',
    back: 'rejectedAt',
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
    issuingCard,
    receivingCard,
    agent,
    validatedAt,
    rejectedAt,
    createdAt,
    updatedAt,
  ];
}