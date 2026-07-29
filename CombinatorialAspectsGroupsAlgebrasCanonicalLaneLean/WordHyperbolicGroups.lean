import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure WordHyperbolicGroup (G : Type u) [Group G] where
  generatingSet : Set G
  cayleyGraph : Graph G
  deltaHyperbolic : ℕ → Prop
  geodesicLanguageRegular : Prop
  asphericalCone : Prop

def WordHyperbolicClosed {G : Type u} [Group G] (H : WordHyperbolicGroup G) : Prop :=
  (∀ n, H.deltaHyperbolic n) ∧ H.geodesicLanguageRegular ∧ H.asphericalCone

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse