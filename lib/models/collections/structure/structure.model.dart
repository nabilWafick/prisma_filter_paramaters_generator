import 'package:prisma_filter_paramaters_generator/models/agents/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/collectors/structure/structure.model.dart';
import 'package:prisma_filter_paramaters_generator/models/common/field/field.model.dart';

class CollectionStructure {
  static Field id = Field(
    front: 'ID',
    back: 'id',
    type: int,
    isNullable: false,
    isRelation: false,
  );

  static Field amount = Field(
    front: 'Montant',
    back: 'amount',
    type: double,
    isNullable: false,
    isRelation: false,
  );

  static Field rest = Field(
    front: 'Reste',
    back: 'rest',
    type: double,
    isNullable: false,
    isRelation: false,
  );

  static Field collectedAt = Field(
    front: 'Date',
    back: 'collectedAt',
    type: DateTime,
    isNullable: false,
    isRelation: false,
  );

  static Field collector = Field(
    front: 'Collecteur',
    back: 'collector',
    type: String,
    isNullable: false,
    isRelation: true,
    fields: CollectorStructure.fields
        .where(
          (field) => field.back != 'id',
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
    amount,
    rest,
    collectedAt,
    collector,
    agent,
    createdAt,
    updatedAt,
  ];
}
