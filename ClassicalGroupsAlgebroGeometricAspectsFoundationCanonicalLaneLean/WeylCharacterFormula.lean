import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure WeylCharacterPackage (G : Type u) [Group G] [TopologicalSpace G] [LieGroup G] where
  maximalTorus : Subgroup G
  rootSystem : Type v
  weightLattice : Type w
  characterFormula : Prop
  denominatorIdentity : Prop
  dimensionFormula : Prop
  maximalTorusClosed : maximalTorus
  rootSystemClosed : rootSystem
  weightLatticeClosed : weightLattice
  characterFormulaClosed : characterFormula
  denominatorIdentityClosed : denominatorIdentity
  dimensionFormulaClosed : dimensionFormula

structure WeylCharacterEvidence {G : Type u} [Group G] [TopologicalSpace G] [LieGroup G] (W : WeylCharacterPackage G) where
  characterFormulaClosed : W.characterFormula
  denominatorIdentityClosed : W.denominatorIdentity
  dimensionFormulaClosed : W.dimensionFormula

def WeylCharacterClosed {G : Type u} [Group G] [TopologicalSpace G] [LieGroup G] (W : WeylCharacterPackage G) : Prop :=
  W.characterFormula ∧ W.denominatorIdentity ∧ W.dimensionFormula

theorem weyl_character_closed_from_evidence
    {G : Type u} [Group G] [TopologicalSpace G] [LieGroup G] (W : WeylCharacterPackage G) (E : WeylCharacterEvidence W) :
    WeylCharacterClosed W := by
  exact And.intro E.characterFormulaClosed (And.intro E.denominatorIdentityClosed E.dimensionFormulaClosed)

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse
