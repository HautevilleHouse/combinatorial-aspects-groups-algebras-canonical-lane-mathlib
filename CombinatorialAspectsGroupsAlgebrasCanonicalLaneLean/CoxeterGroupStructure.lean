import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure CoxeterSystem (M : Matrix Nat Nat ℕ) where
  coxeterMatrix : M
  coxeterGroup : Group
  standardGenerators : List (CoxeterGroup)
  relationsSatisfied : Prop
  braidRelations : Prop

def CoxeterStructureClosed {M : Matrix Nat Nat ℕ} (C : CoxeterSystem M) : Prop :=
  C.relationsSatisfied ∧ C.braidRelations

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse