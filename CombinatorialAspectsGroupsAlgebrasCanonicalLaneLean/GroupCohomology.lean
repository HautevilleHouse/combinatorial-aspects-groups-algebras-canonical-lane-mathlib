import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure GroupCohomologyPackage (G : Type u) [Group G] where
  resolution : Type v
  cochains : ℕ → ((G →ⁱ A) : Type)
  coboundary : (n : ℕ) → cochains n → cochains (n+1)
  cohomologyGroups : ℕ → Type w
  dimensionZero : cohomologyGroups 0 ≅ (A : Type)
  higherGroupsComputed : Prop

def GroupCohomologyClosed {G : Type u} [Group G] (H : GroupCohomologyPackage G) : Prop :=
  H.higherGroupsComputed ∧ Nonempty (H.dimensionZero)

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse
