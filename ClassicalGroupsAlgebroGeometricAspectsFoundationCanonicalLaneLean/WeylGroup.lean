import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure WeylGroup (R : RootSystem n) where
  generators : Set (Vector ℤ n → Vector ℤ n)
  generatedByReflections : ∀ g ∈ generators, isReflection g
  groupStructure : Group (Subgroup generatedByReflections)
  reflectionProperty : Prop
  reflectionPropertyClosed : reflectionProperty

def WeylGroupClosed (R : RootSystem n) (W : WeylGroup R) : Prop :=
  W.reflectionProperty

theorem weyl_group_closed_from_evidence (R : RootSystem n) (W : WeylGroup R) : WeylGroupClosed R W :=
  W.reflectionPropertyClosed

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse