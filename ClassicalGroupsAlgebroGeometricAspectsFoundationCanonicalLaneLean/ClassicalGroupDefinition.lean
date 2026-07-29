import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure ClassicalOverField (k : Type) [Field k] where
  carrier : Type
  embedding : carrier → Matrix (Fin n) (Fin n) k
  closureUnderMultiplication : ∀ g h : carrier, embedding (g * h) = embedding g * embedding h
  identityIncluded : ∃ e : carrier, embedding e = 1
  inverseIncluded : ∀ g : carrier, embedding (g⁻¹) = (embedding g)⁻¹

def ClassicalGroupClosed {k : Type} [Field k] (G : ClassicalOverField k) : Prop :=
  G.closureUnderMultiplication ∧ G.identityIncluded ∧ G.inverseIncluded

theorem classical_group_closed_from_structure {k : Type} [Field k] (G : ClassicalOverField k) : ClassicalGroupClosed G :=
  And.intro G.closureUnderMultiplication (And.intro G.identityIncluded G.inverseIncluded)

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse