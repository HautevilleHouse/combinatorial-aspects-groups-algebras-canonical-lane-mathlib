import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure GroupAlgebraRepresentation (k : Type u) [Field k] (G : Type v) [Group G] where
  groupAlgebra : k[G]
  moduleStructure : Module k[G] (V : Type w)
  representation : G → (V →ₗ[k] V)
  irreducible : Prop
  semisimple : Prop
  characters : G → k
  characterTable : Finset (G → k)
  orthogonalityRelations : Prop
  inducedRepresentations : (H : Subgroup G) → (Representation k H W) → Representation k G (Induced W)

def GroupAlgebraRepresentationClosed (k : Type u) [Field k] (G : Type v) [Group G] (R : GroupAlgebraRepresentation k G) : Prop :=
  R.irreducible ∨ R.semisimple

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse
