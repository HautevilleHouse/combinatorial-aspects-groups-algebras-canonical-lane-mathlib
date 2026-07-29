import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure FreeGroupCayleyGraph (F : Type u) [Group F] where
  freeBasis : List F
  wordReduction : F → List (freeBasis ⊔ freeBasis⁻¹)
  reducedFormUnique : ∀ w : F, (wordReduction w) is Reduced
  CayleyGraph : Type v
  vertexSet : F
  edgeSet : (freeBasis) × F → F
  treeStructure : IsTree CayleyGraph
  groupActsFreely : IsFreeAction F on CayleyGraph

def FreeGroupCayleyGraphClosed (F : Type u) [Group F] (C : FreeGroupCayleyGraph F) : Prop :=
  C.reducedFormUnique ∧ C.treeStructure ∧ C.groupActsFreely

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse
