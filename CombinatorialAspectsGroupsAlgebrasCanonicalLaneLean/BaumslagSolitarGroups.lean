import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure BaumslagSolitarGroup where
  m : ℕ
  n : ℕ
  presentation : Presentation
  hopfian : Prop
  residuallyFinite : Prop
  algorithmicProperties : Prop

def BaumslagSolitarClosed (B : BaumslagSolitarGroup) : Prop :=
  B.hopfian ∧ B.residuallyFinite ∧ B.algorithmicProperties

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse