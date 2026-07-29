import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

def ConstrainedClassicalGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classical_groups_endgame (A : AdmissibleClass) :
    ConstrainedClassicalGroupsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse