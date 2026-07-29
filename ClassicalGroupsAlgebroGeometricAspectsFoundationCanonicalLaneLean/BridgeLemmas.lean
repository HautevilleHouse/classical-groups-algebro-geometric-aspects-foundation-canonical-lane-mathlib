import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject.closed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse