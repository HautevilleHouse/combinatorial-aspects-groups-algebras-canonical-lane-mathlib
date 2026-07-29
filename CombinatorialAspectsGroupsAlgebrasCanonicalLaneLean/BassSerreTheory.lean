import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure GraphOfGroups where
  graph : Type u
  vertexGroups : graph.vertex → Type v [Group]
  edgeGroups : graph.edge → Type w [Group]
  edgeMonomorphisms : (e : graph.edge) → edgeGroups e → vertexGroups (graph.source e)
  edgeMonomorphisms' : (e : graph.edge) → edgeGroups e → vertexGroups (graph.target e)

structure BassSerreTree where
  tree : Type u
  fundamentalGroup : Type v [Group]
  action : fundamentalGroup → tree → tree
  vertexStabilizers : tree.vertex → Type w [Group]
  edgeStabilizers : tree.edge → Type x [Group]
  freeProductDecomposition : Prop
  HNNExtensionDecomposition : Prop

def BassSerreClosed (B : BassSerreTree) : Prop :=
  B.freeProductDecomposition ∨ B.HNNExtensionDecomposition

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse
