import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.FlagVariety

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure BruhatDecomposition where
  group : Type u
  borelSubgroup : Set group
  weylGroup : Type v
  doubleCosets : Set (Set group)
  cellDecomposition : Prop
  closureRelations : Prop

def BruhatDecompositionClosed (B : BruhatDecomposition) : Prop :=
  B.cellDecomposition ∧ B.closureRelations

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse