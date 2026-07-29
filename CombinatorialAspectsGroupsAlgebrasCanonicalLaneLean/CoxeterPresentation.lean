import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.AdmissibleClass

/-!
# Coxeter Presentation Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure CoxeterPresentation (G : Type u) [Group G] where
  generators : List G
  relations : List (G × G)
  reflectionRepresentation : Prop
  anglesDefined : Prop
  coxeterMatrix : Prop

structure CoxeterPresentationEvidence (G : Type u) [Group G] (C : CoxeterPresentation G) where
  generatorsClosed : C.generators.length > 0
  relationsClosed : C.relations.length > 0
  reflectionRepresentationClosed : C.reflectionRepresentation
  anglesDefinedClosed : C.anglesDefined
  coxeterMatrixClosed : C.coxeterMatrix

def CoxeterPresentationClosed (G : Type u) [Group G] (C : CoxeterPresentation G) : Prop :=
  C.generators.length > 0 ∧ C.relations.length > 0 ∧ C.reflectionRepresentation ∧ C.anglesDefined ∧ C.coxeterMatrix

theorem coxeter_presentation_closed_from_evidence (G : Type u) [Group G] (C : CoxeterPresentation G)
    (E : CoxeterPresentationEvidence G C) : CoxeterPresentationClosed G C := by
  exact And.intro E.generatorsClosed (And.intro E.relationsClosed (And.intro E.reflectionRepresentationClosed (And.intro E.anglesDefinedClosed E.coxeterMatrixClosed)))

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse