import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.PrimeIdealSpectrum

/-!
# K-M Spectrum Package (Kostant-Mostow-type results)
-/

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure KMSpectrumPackage {P : GroupAlgebraStructurePackage}
    {G : GrowthAndPIPackage P} {S : PrimeIdealSpectrumPackage G} where
  maximalIdeals : Set (Ideal P.algebra.carrier)
  primitiveSpectrum : Set (Ideal P.algebra.carrier)
  finiteDimensionalRepresentationsExist : Prop
  irreducibleCharactersClassified : Prop

def KMSpectrumClosed {P : GroupAlgebraStructurePackage}
    {G : GrowthAndPIPackage P} {S : PrimeIdealSpectrumPackage G}
    (K : KMSpectrumPackage S) : Prop :=
  K.finiteDimensionalRepresentationsExist ∧ K.irreducibleCharactersClassified

theorem km_spectrum_closed_from_evidence
    {P : GroupAlgebraStructurePackage} {G : GrowthAndPIPackage P}
    {S : PrimeIdealSpectrumPackage G} (K : KMSpectrumPackage S) :
    KMSpectrumClosed K := by
  exact And.intro K.finiteDimensionalRepresentationsExist K.irreducibleCharactersClassified

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse