import ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Reductive Group Classification Package
-/

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure ReductiveGroupClassificationPackage where
  reductiveGroup : Type u
  parabolicSubgroup : Type v
  borelSubgroup : Type w
  chevalleyInvolution : Prop
  extendedDynkinDiagram : Prop
  classificationComplete : Prop

structure ReductiveGroupClassificationEvidence (R : ReductiveGroupClassificationPackage) where
  chevalleyInvolutionClosed : R.chevalleyInvolution
  extendedDynkinDiagramClosed : R.extendedDynkinDiagram
  classificationCompleteClosed : R.classificationComplete

def ReductiveGroupClassificationClosed (R : ReductiveGroupClassificationPackage) : Prop :=
  R.chevalleyInvolution ∧ R.extendedDynkinDiagram ∧ R.classificationComplete

theorem reductive_group_classification_closed_from_evidence
    (R : ReductiveGroupClassificationPackage) (E : ReductiveGroupClassificationEvidence R) :
    ReductiveGroupClassificationClosed R := by
  exact And.intro E.chevalleyInvolutionClosed
    (And.intro E.extendedDynkinDiagramClosed E.classificationCompleteClosed)

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse
