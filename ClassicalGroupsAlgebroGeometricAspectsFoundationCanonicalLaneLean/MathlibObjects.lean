import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassicalGroupAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  linearGroup : Type
  groupStructure : Group linearGroup
  representation : linearGroup → (space → space)
  actionContinuous : Continuous (λ g x => representation g x)
  classificationStatement : Prop
  conclusion : classificationStatement

def ClassicalGroupWitnessClosed (O : ClassicalGroupAdmittedObject) : Prop :=
  O.classificationStatement

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse