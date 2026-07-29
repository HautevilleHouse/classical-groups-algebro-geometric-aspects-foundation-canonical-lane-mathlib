import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean

structure RootSystem where
  rootSpace : Type u
  roots : Set rootSpace
  cartanMatrix : Matrix (Fin r) (Fin r) ℤ
  simpleRoots : List rootSpace
  weylGroup : Type v
  invariance : Prop

def RootSystemClosed (R : RootSystem) : Prop :=
  R.invariance

end ClassicalGroupsAlgebroGeometricAspectsFoundationCanonicalLaneLean
end HautevilleHouse