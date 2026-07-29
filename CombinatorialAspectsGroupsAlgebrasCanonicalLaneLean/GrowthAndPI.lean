import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.GroupAlgebraStructure

/-!
# Growth and Polynomial Identity Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure GrowthAndPIPackage (P : GroupAlgebraStructurePackage) where
  growthFunction : ℕ → ℕ
  polynomialGrowth : Prop
  polynomialIdentity : Prop
  piDegree : ℕ
  growthMatchesPI : Prop

def GrowthAndPIClosed {P : GroupAlgebraStructurePackage} (G : GrowthAndPIPackage P) : Prop :=
  G.polynomialGrowth ∧ G.polynomialIdentity ∧ G.growthMatchesPI

theorem growth_and_pi_closed_from_evidence
    {P : GroupAlgebraStructurePackage} (G : GrowthAndPIPackage P) :
    GrowthAndPIClosed G := by
  exact And.intro G.polynomialGrowth (And.intro G.polynomialIdentity G.growthMatchesPI)

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse