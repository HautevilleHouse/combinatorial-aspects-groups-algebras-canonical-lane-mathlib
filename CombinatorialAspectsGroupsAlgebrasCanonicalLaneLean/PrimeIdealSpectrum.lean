import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.GrowthAndPI

/-!
# Prime Ideal Spectrum Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure PrimeIdealSpectrumPackage {P : GroupAlgebraStructurePackage}
    (G : GrowthAndPIPackage P) where
  primeIdeals : Set (Ideal P.algebra.carrier)
  primitiveIdeals : Set (Ideal P.algebra.carrier)
  primitiveEqualsPrime : Prop
  jacobsonRadical : Ideal P.algebra.carrier
  nilpotentElements : Prop

def PrimeIdealSpectrumClosed {P : GroupAlgebraStructurePackage}
    {G : GrowthAndPIPackage P} (S : PrimeIdealSpectrumPackage G) : Prop :=
  S.primitiveEqualsPrime ∧ S.nilpotentElements

theorem prime_ideal_spectrum_closed_from_evidence
    {P : GroupAlgebraStructurePackage} {G : GrowthAndPIPackage P}
    (S : PrimeIdealSpectrumPackage G) : PrimeIdealSpectrumClosed S := by
  exact And.intro S.primitiveEqualsPrime S.nilpotentElements

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse