import ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.GroupStructure

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure RepresentationPackage (G : Type) [Group G] where
  vectorSpace : Type
  field : Type
  [fieldIsField : Field field]
  [vecSpace : AddCommGroup vectorSpace]
  [module : Module field vectorSpace]
  action : G → (vectorSpace → vectorSpace)
  linearAction : ∀ g : G, LinearMap field vectorSpace vectorSpace (action g)
  identityAction : ∀ v : vectorSpace, action 1 v = v
  compositionAction : ∀ g h : G, ∀ v : vectorSpace, action (g * h) v = action g (action h v)

structure RepresentationEvidence {G : Type} [Group G] (R : RepresentationPackage G) where
  linearActionClosed : R.linearAction
  identityActionClosed : R.identityAction
  compositionActionClosed : R.compositionAction

def RepresentationClosed {G : Type} [Group G] (R : RepresentationPackage G) : Prop :=
  R.linearAction ∧ R.identityAction ∧ R.compositionAction

theorem representation_closed_from_evidence {G : Type} [Group G] (R : RepresentationPackage G) (E : RepresentationEvidence R) : RepresentationClosed R := by
  exact And.intro E.linearActionClosed (And.intro E.identityActionClosed E.compositionActionClosed)

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse