import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure FlagVarietyPackage (G : Type u) [Group G] where
  borelSubgroup : Subgroup G
  weylGroup : Type v
  parabolicSubgroups : Set (Subgroup G)
  flagManifold : Type w
  cellDecomposition : Prop
  bruhatOrder : Prop
  schubertCalculus : Prop
  cellDecompositionClosed : cellDecomposition
  bruhatOrderClosed : bruhatOrder
  schubertCalculusClosed : schubertCalculus

structure FlagVarietyEvidence {G : Type u} [Group G] (F : FlagVarietyPackage G) where
  cellDecompositionClosed : F.cellDecomposition
  bruhatOrderClosed : F.bruhatOrder
  schubertCalculusClosed : F.schubertCalculus

def FlagVarietyClosed {G : Type u} [Group G] (F : FlagVarietyPackage G) : Prop :=
  F.cellDecomposition ∧ F.bruhatOrder ∧ F.schubertCalculus

theorem flag_variety_closed_from_evidence
    {G : Type u} [Group G] (F : FlagVarietyPackage G) (E : FlagVarietyEvidence F) :
    FlagVarietyClosed F := by
  exact And.intro E.cellDecompositionClosed (And.intro E.bruhatOrderClosed E.schubertCalculusClosed)

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse
