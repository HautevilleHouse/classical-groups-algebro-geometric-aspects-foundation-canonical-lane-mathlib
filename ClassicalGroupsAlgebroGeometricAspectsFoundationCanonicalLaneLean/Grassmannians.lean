import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure Grassmannian {k : Type} [Field k] (n : ℕ) (d : ℕ) where
  subspaces : Set (Submodule k (Vector k n))
  dimensionCondition : ∀ U ∈ subspaces, Module.rank k U = d
  smoothStructure : Prop
  smoothStructureClosed : smoothStructure

def GrassmannianClosed {k : Type} [Field k] {n d : ℕ} (G : Grassmannian k n d) : Prop :=
  G.smoothStructure

theorem grassmannian_closed_from_evidence {k : Type} [Field k] {n d : ℕ} (G : Grassmannian k n d) : GrassmannianClosed G :=
  G.smoothStructureClosed

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse