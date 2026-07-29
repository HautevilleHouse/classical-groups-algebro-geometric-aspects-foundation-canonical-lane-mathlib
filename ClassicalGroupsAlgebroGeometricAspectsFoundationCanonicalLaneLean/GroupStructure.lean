import ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure GroupStructurePackage (G : Type) [Group G] where
  groupType : Type
  groupOp : groupType → groupType → groupType
  identity : groupType
  inverse : groupType → groupType
  associativity : ∀ a b c : groupType, groupOp (groupOp a b) c = groupOp a (groupOp b c)
  identityLeft : ∀ a : groupType, groupOp identity a = a
  identityRight : ∀ a : groupType, groupOp a identity = a
  inverseLeft : ∀ a : groupType, groupOp (inverse a) a = identity
  inverseRight : ∀ a : groupType, groupOp a (inverse a) = identity

structure GroupStructureEvidence {G : Type} [Group G] (P : GroupStructurePackage G) where
  associativityClosed : P.associativity
  identityLeftClosed : P.identityLeft
  identityRightClosed : P.identityRight
  inverseLeftClosed : P.inverseLeft
  inverseRightClosed : P.inverseRight

def GroupStructureClosed {G : Type} [Group G] (P : GroupStructurePackage G) : Prop :=
  P.associativity ∧ P.identityLeft ∧ P.identityRight ∧ P.inverseLeft ∧ P.inverseRight

theorem group_structure_closed_from_evidence {G : Type} [Group G] (P : GroupStructurePackage G) (E : GroupStructureEvidence P) : GroupStructureClosed P := by
  exact And.intro E.associativityClosed (And.intro E.identityLeftClosed (And.intro E.identityRightClosed (And.intro E.inverseLeftClosed E.inverseRightClosed)))

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse