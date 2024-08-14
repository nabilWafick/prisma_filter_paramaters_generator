import 'package:prisma_filter_paramaters_generator/models/common/field/field.model.dart';
import 'package:prisma_filter_paramaters_generator/models/products/structure/structure.model.dart';

class TypeStructure {
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

  static Field stake = Field(
    front: 'Mise',
    back: 'stake',
    type: double,
    isNullable: false,
    isRelation: false,
  );

  static Field typeProducts = Field(
    front: 'Produits',
    back: 'typeProducts',
    type: String,
    isNullable: true,
    isRelation: true,
    fields: [
      Field(
        front: 'Au moins un',
        back: 'some',
        type: String,
        isNullable: false,
        isRelation: true,
        fields: [
          Field(
            front: 'Nombre',
            back: 'productNumber',
            type: int,
            isNullable: false,
            isRelation: false,
          ),
          Field(
            front: 'Produit',
            back: 'product',
            type: String,
            isNullable: false,
            isRelation: true,
            fields: ProductStructure.fields
                .where(
                  (field) => field.back != 'id',
                )
                .toList(),
          ),
        ],
      ),
    ],
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
    stake,
    typeProducts,
    createdAt,
    updatedAt,
  ];
}
