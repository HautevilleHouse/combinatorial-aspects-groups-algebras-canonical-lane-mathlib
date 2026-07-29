import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure WordMetricGrowthPackage where
  groupCarrier : Type u
  generatingSet : List (groupCarrier)
  wordLengthFunction : groupCarrier → ℕ
  growthFunction : ℕ → ℕ
  exponentialGrowth : Prop
  polynomialGrowth : Prop
  intermediateGrowth : Prop

def WordMetricGrowthClosed (W : WordMetricGrowthPackage) : Prop :=
  W.exponentialGrowth ∨ W.polynomialGrowth ∨ W.intermediateGrowth

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse
