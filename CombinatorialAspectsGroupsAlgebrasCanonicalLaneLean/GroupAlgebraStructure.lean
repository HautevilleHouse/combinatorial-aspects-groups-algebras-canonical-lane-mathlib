import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure GroupAlgebraPackage where
  group : Type u
  multipliciationGroup : group → group → group
  identityElement : group
  inverseElement : group → group
  algebraField : Type v
  scalarMultiplication : algebraField → group → group
  vectorSpaceStructure : group → group → group
  associativity : ∀ a b c : group, multipliciationGroup (multipliciationGroup a b) c = multipliciationGroup a (multipliciationGroup b c)
  identityLeft : ∀ a : group, multipliciationGroup identityElement a = a
  identityRight : ∀ a : group, multipliciationGroup a identityElement = a
  inverseLeft : ∀ a : group, multipliciationGroup (inverseElement a) a = identityElement
  inverseRight : ∀ a : group, multipliciationGroup a (inverseElement a) = identityElement
  fieldAxioms : ∀ a b c : algebraField, a + b = b + a ∧ (a + b) + c = a + (b + c) ∧ a + 0 = a ∧ a + (-a) = 0 ∧ a * b = b * a ∧ (a * b) * c = a * (b * c) ∧ a * 1 = a ∧ a * (b + c) = a * b + a * c

structure GroupAlgebraEvidence (P : GroupAlgebraPackage) where
  associativityClosed : P.associativity
  identityLeftClosed : P.identityLeft
  identityRightClosed : P.identityRight
  inverseLeftClosed : P.inverseLeft
  inverseRightClosed : P.inverseRight
  fieldAxiomsClosed : P.fieldAxioms

def GroupAlgebraClosed (P : GroupAlgebraPackage) : Prop :=
  P.associativity ∧ P.identityLeft ∧ P.identityRight ∧ P.inverseLeft ∧ P.inverseRight ∧ P.fieldAxioms

theorem group_algebra_closed_from_evidence (P : GroupAlgebraPackage) (E : GroupAlgebraEvidence P) :
    GroupAlgebraClosed P := by
  exact And.intro E.associativityClosed (And.intro E.identityLeftClosed (And.intro E.identityRightClosed (And.intro E.inverseLeftClosed (And.intro E.inverseRightClosed E.fieldAxiomsClosed))))

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse