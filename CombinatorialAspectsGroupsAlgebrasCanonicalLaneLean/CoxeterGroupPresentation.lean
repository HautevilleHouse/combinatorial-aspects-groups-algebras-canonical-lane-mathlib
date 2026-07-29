import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure CoxeterSystem where
  generators : Type u
  orders : generators → generators → (ℕ ∪ {∞})
  braidRelations : (generators × generators) → Prop

structure CoxeterGroupPresentation where
  coxeterSystem : CoxeterSystem
  wordReductionRules : List (List (coxeterSystem.generators) × List (coxeterSystem.generators))
  finiteCoxeterGroup : Prop
  affineCoxeterGroup : Prop
  crystallographicCondition : Prop

def CoxeterGroupPresentationClosed (C : CoxeterGroupPresentation) : Prop :=
  C.finiteCoxeterGroup ∨ C.affineCoxeterGroup

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse
