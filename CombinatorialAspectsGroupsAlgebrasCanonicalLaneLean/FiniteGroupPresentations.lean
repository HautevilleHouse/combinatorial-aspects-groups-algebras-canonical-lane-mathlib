import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure FiniteGroupPresentation (G : Type u) [Group G] where
  generators : List G
  relations : List (FreeGroup (Fin (List.length generators)) → FreeGroup (Fin (List.length generators)))
  finiteIndex : Prop
  solvableWordProblem : Prop

def FiniteGroupPresentationsClosed {G : Type u} [Group G] (P : FiniteGroupPresentation G) : Prop :=
  P.finiteIndex ∧ P.solvableWordProblem

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse