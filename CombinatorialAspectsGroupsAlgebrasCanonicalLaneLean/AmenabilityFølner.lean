import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure AmenabilityPackage (G : Type u) [Group G] where
  finitelyGenerated : Prop
  FølnerSequence : ℕ → Set G
  FølnerCondition : ∀ n, FølnerSequence n ≠ ∅ ∧ (∀ g ∈ generatingSet, #((g • FølnerSequence n) ∆ FølnerSequence n) / #FølnerSequence n < 1/n)
  amenable : Prop
  nonAmenable : Prop

def AmenabilityClosed {G : Type u} [Group G] (A : AmenabilityPackage G) : Prop :=
  (A.amenable ∧ A.FølnerCondition) ∨ (A.nonAmenable ∧ ¬ A.FølnerCondition)

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse
