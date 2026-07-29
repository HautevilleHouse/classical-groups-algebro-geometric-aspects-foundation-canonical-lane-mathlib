import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.FlagVarieties

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure SchubertCalculusPackage {G : Type u} [Group G] (F : FlagVarietyPackage G) where
  schubertVarieties : Type v
  cohomologyRing : Type w
  intersectionProduct : Prop
  pieriRule : Prop
  giambelliFormula : Prop
  schubertVarietiesClosed : schubertVarieties
  cohomologyRingClosed : cohomologyRing
  intersectionProductClosed : intersectionProduct
  pieriRuleClosed : pieriRule
  giambelliFormulaClosed : giambelliFormula

structure SchubertCalculusEvidence {G : Type u} [Group G] {F : FlagVarietyPackage G} (S : SchubertCalculusPackage F) where
  schubertVarietiesClosed : S.schubertVarieties
  cohomologyRingClosed : S.cohomologyRing
  intersectionProductClosed : S.intersectionProduct
  pieriRuleClosed : S.pieriRule
  giambelliFormulaClosed : S.giambelliFormula

def SchubertCalculusClosed {G : Type u} [Group G] {F : FlagVarietyPackage G} (S : SchubertCalculusPackage F) : Prop :=
  S.schubertVarieties ∧ S.cohomologyRing ∧ S.intersectionProduct ∧ S.pieriRule ∧ S.giambelliFormula

theorem schubert_calculus_closed_from_evidence
    {G : Type u} [Group G] {F : FlagVarietyPackage G} (S : SchubertCalculusPackage F) (E : SchubertCalculusEvidence S) :
    SchubertCalculusClosed S := by
  exact And.intro E.schubertVarietiesClosed (And.intro E.cohomologyRingClosed (And.intro E.intersectionProductClosed (And.intro E.pieriRuleClosed E.giambelliFormulaClosed)))

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse
