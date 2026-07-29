import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure GroupCohomologyPackage (G : Type u) [Group G] where
  cohomologyGroups : ℕ → AbelianGroup
  resolution : ProjectiveResolution (ModuleCat ℤ) G
  invariantsComputed : Prop
  cupProductDefined : Prop
  poincareDualityHolds : Prop

def GroupCohomologyClosed {G : Type u} [Group G] (C : GroupCohomologyPackage G) : Prop :=
  C.invariantsComputed ∧ C.cupProductDefined ∧ C.poincareDualityHolds

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse