import ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.GroupScheme

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure AlgebraicGroupSchemePackage {G : GroupSchemePackage} (A : AffineGroupSchemePackage G) where
  groupLaw : Prop
  multiplicationMorphism : Prop
  inverseMorphism : Prop
  identitySection : Prop
  groupLawClosed : groupLaw
  multiplicationMorphismClosed : multiplicationMorphism
  inverseMorphismClosed : inverseMorphism
  identitySectionClosed : identitySection

structure AlgebraicGroupSchemeEvidence {G : GroupSchemePackage} {A : AffineGroupSchemePackage G} (P : AlgebraicGroupSchemePackage A) where
  groupLawClosed : P.groupLaw
  multiplicationMorphismClosed : P.multiplicationMorphism
  inverseMorphismClosed : P.inverseMorphism
  identitySectionClosed : P.identitySection

def AlgebraicGroupSchemeClosed {G : GroupSchemePackage} {A : AffineGroupSchemePackage G} (P : AlgebraicGroupSchemePackage A) : Prop :=
  P.groupLaw ∧ P.multiplicationMorphism ∧ P.inverseMorphism ∧ P.identitySection

theorem algebraic_group_scheme_closed_from_evidence {G : GroupSchemePackage} {A : AffineGroupSchemePackage G} (P : AlgebraicGroupSchemePackage A) (E : AlgebraicGroupSchemeEvidence P) : AlgebraicGroupSchemeClosed P := by
  exact And.intro E.groupLawClosed (And.intro E.multiplicationMorphismClosed (And.intro E.inverseMorphismClosed E.identitySectionClosed))

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse
