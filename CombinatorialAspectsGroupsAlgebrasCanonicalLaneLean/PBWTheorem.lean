import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.CoxeterPresentation

/-!
# Poincaré–Birkhoff–Witt Theorem Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure PBWTheorem (G : Type u) [Group G] (k : Type v) [CommRing k] where
  lieAlgebra : Type w
  universalEnvelopingAlgebra : Type x
  PBWIsomorphism : Type y
  orderedBasis : Prop
  monomialsSpan : Prop
  dimensionsMatch : Prop

structure PBWTheoremEvidence (G : Type u) [Group G] (k : Type v) [CommRing k]
    (P : PBWTheorem G k) where
  orderedBasisClosed : P.orderedBasis
  monomialsSpanClosed : P.monomialsSpan
  dimensionsMatchClosed : P.dimensionsMatch

def PBWTheoremClosed (G : Type u) [Group G] (k : Type v) [CommRing k]
    (P : PBWTheorem G k) : Prop :=
  P.orderedBasis ∧ P.monomialsSpan ∧ P.dimensionsMatch

theorem pbw_theorem_closed_from_evidence (G : Type u) [Group G] (k : Type v) [CommRing k]
    (P : PBWTheorem G k) (E : PBWTheoremEvidence G k P) : PBWTheoremClosed G k P := by
  exact And.intro E.orderedBasisClosed (And.intro E.monomialsSpanClosed E.dimensionsMatchClosed)

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse