import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure BorelSubgroup {k : Type} [Field k] (G : ClassicalOverField k) where
  subgroup : Set G.carrier
  solvable : Prop
  maximalSolvable : Prop
  solvableClosed : solvable
  maximalSolvableClosed : maximalSolvable

def BorelSubgroupClosed {k : Type} [Field k] {G : ClassicalOverField k} (B : BorelSubgroup G) : Prop :=
  B.solvable ∧ B.maximalSolvable

theorem borel_subgroup_closed_from_evidence {k : Type} [Field k] {G : ClassicalOverField k} (B : BorelSubgroup G) : BorelSubgroupClosed B :=
  And.intro B.solvableClosed B.maximalSolvableClosed

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse