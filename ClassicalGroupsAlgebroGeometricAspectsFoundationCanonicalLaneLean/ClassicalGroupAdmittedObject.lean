import ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassicalGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClassicalGroupAdmittedObject where
  space : ClassicalGroupSpace
  groupStructure : Prop
  algebraicVariety : Prop
  affineModel : Type
  affineTopology : TopologicalSpace affineModel
  morphismToAffine : Prop
  conclusion : morphismToAffine

structure GroupEndgameState where
  object : ClassicalGroupAdmittedObject

def GroupWitnessClosed (O : ClassicalGroupAdmittedObject) : Prop :=
  O.morphismToAffine

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse
