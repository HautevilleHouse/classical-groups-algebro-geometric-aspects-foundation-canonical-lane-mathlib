import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.RootSystem

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure FlagVariety where
  group : Type u
  borelSubgroup : Set group
  flagSet : Set (Set group)
  smoothStructure : Prop
  schubertCells : List (Set group)
  cellularDecomposition : Prop

def FlagVarietyClosed (F : FlagVariety) : Prop :=
  F.smoothStructure ∧ F.cellularDecomposition

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse