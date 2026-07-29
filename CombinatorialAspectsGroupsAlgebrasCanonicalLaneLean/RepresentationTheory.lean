import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.GroupAlgebraStructure

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure RepresentationPackage {G : GroupAlgebraPackage} where
  representationSpace : Type u
  vectorSpaceStructure : representationSpace → representationSpace → representationSpace
  scalarMultiplication : G.algebraField → representationSpace → representationSpace
  groupAction : G.group → representationSpace → representationSpace
  linearity : ∀ (g : G.group) (v w : representationSpace), groupAction g (vectorSpaceStructure v w) = vectorSpaceStructure (groupAction g v) (groupAction g w)
  identityAction : ∀ (v : representationSpace), groupAction G.identityElement v = v
  compatibility : ∀ (g h : G.group) (v : representationSpace), groupAction (G.multipliciationGroup g h) v = groupAction g (groupAction h v)

structure RepresentationEvidence {G : GroupAlgebraPackage} (R : RepresentationPackage G) where
  linearityClosed : R.linearity
  identityActionClosed : R.identityAction
  compatibilityClosed : R.compatibility

def RepresentationClosed {G : GroupAlgebraPackage} (R : RepresentationPackage G) : Prop :=
  R.linearity ∧ R.identityAction ∧ R.compatibility

theorem representation_closed_from_evidence {G : GroupAlgebraPackage} (R : RepresentationPackage G) (E : RepresentationEvidence R) :
    RepresentationClosed R := by
  exact And.intro E.linearityClosed (And.intro E.identityActionClosed E.compatibilityClosed)

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse