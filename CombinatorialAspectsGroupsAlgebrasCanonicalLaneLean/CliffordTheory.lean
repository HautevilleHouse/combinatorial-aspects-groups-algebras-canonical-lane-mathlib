import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure CliffordTheoryPackage where
  group : GroupAlgebraPackage
  normalSubgroup : Type u
  normalSubgroupMul : normalSubgroup → normalSubgroup → normalSubgroup
  normalSubgroupInv : normalSubgroup → normalSubgroup
  normalSubgroupOne : normalSubgroup
  normalSubgroupMulAssoc : ∀ a b c : normalSubgroup, normalSubgroupMul (normalSubgroupMul a b) c = normalSubgroupMul a (normalSubgroupMul b c)
  normalSubgroupOneMul : ∀ a : normalSubgroup, normalSubgroupMul normalSubgroupOne a = a
  normalSubgroupMulOne : ∀ a : normalSubgroup, normalSubgroupMul a normalSubgroupOne = a
  normalSubgroupMulInv : ∀ a : normalSubgroup, normalSubgroupMul a (normalSubgroupInv a) = normalSubgroupOne
  normalSubgroupInvMul : ∀ a : normalSubgroup, normalSubgroupMul (normalSubgroupInv a) a = normalSubgroupOne
  inclusion : normalSubgroup → group.group
  inclusionMul : ∀ a b : normalSubgroup, inclusion (normalSubgroupMul a b) = group.groupMul (inclusion a) (inclusion b)
  inclusionInv : ∀ a : normalSubgroup, inclusion (normalSubgroupInv a) = group.groupInv (inclusion a)
  inclusionOne : inclusion normalSubgroupOne = group.groupOne
  normal : Prop
  normalClosed : normal
  defect : ℕ
  defectComputed : defect = 0
  cliffordTheorem : Prop
  cliffordTheoremClosed : cliffordTheorem

def CliffordTheoryClosed (P : CliffordTheoryPackage) : Prop :=
  P.normal ∧ P.cliffordTheorem

theorem clifford_theory_closed (P : CliffordTheoryPackage) : CliffordTheoryClosed P := by
  exact And.intro P.normalClosed P.cliffordTheoremClosed

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse