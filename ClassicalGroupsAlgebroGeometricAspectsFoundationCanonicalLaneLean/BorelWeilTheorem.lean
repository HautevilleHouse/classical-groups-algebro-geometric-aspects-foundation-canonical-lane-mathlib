import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure BorelWeilPackage (G : Type u) [Group G] [TopologicalSpace G] where
  borelSubgroup : Subgroup G
  lineBundle : Type v
  globalSections : Type w
  irreducibleRepresentation : Prop
  highestWeight : Prop
  lineBundleClosed : lineBundle
  globalSectionsClosed : globalSections
  irreducibleRepresentationClosed : irreducibleRepresentation
  highestWeightClosed : highestWeight

structure BorelWeilEvidence {G : Type u} [Group G] [TopologicalSpace G] (B : BorelWeilPackage G) where
  lineBundleClosed : B.lineBundle
  globalSectionsClosed : B.globalSections
  irreducibleRepresentationClosed : B.irreducibleRepresentation
  highestWeightClosed : B.highestWeight

def BorelWeilClosed {G : Type u} [Group G] [TopologicalSpace G] (B : BorelWeilPackage G) : Prop :=
  B.lineBundle ∧ B.globalSections ∧ B.irreducibleRepresentation ∧ B.highestWeight

theorem borel_weil_closed_from_evidence
    {G : Type u} [Group G] [TopologicalSpace G] (B : BorelWeilPackage G) (E : BorelWeilEvidence B) :
    BorelWeilClosed B := by
  exact And.intro E.lineBundleClosed (And.intro E.globalSectionsClosed (And.intro E.irreducibleRepresentationClosed E.highestWeightClosed))

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse
