import ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.AlgebraicGroupScheme

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure ReductiveGroupRepresentationPackage {G : GroupSchemePackage} {A : AffineGroupSchemePackage G} (S : AlgebraicGroupSchemePackage A) (R : ReductiveGroupSchemePackage S) where
  representationSpace : Type
  representationMorphism : Prop
  semiSimplicity : Prop
  representationSpaceClosed : Nonempty (representationSpace)
  representationMorphismClosed : representationMorphism
  semiSimplicityClosed : semiSimplicity

structure ReductiveGroupRepresentationEvidence {G : GroupSchemePackage} {A : AffineGroupSchemePackage G} (S : AlgebraicGroupSchemePackage A) (R : ReductiveGroupSchemePackage S) (P : ReductiveGroupRepresentationPackage R) where
  representationMorphismClosed : P.representationMorphism
  semiSimplicityClosed : P.semiSimplicity

def ReductiveGroupRepresentationClosed {G : GroupSchemePackage} {A : AffineGroupSchemePackage G} (S : AlgebraicGroupSchemePackage A) (R : ReductiveGroupSchemePackage S) (P : ReductiveGroupRepresentationPackage R) : Prop :=
  P.representationMorphism ∧ P.semiSimplicity

theorem reductive_group_representation_closed_from_evidence {G : GroupSchemePackage} {A : AffineGroupSchemePackage G} (S : AlgebraicGroupSchemePackage A) (R : ReductiveGroupSchemePackage S) (P : ReductiveGroupRepresentationPackage R) (E : ReductiveGroupRepresentationEvidence P) : ReductiveGroupRepresentationClosed P := by
  exact And.intro E.representationMorphismClosed E.semiSimplicityClosed

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse
