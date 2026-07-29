import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.RepresentationTheory

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure CohomologyPackage {G : GroupAlgebraPackage} {R : RepresentationPackage G} where
  cochainComplex : Type u
  coboundaryMap : cochainComplex → cochainComplex
  cohomologyGroups : Type v
  exactness : ∀ (x : cochainComplex), coboundaryMap (coboundaryMap x) = 0
  cohomologyDefined : cohomologyGroups = ker coboundaryMap / im coboundaryMap

structure CohomologyEvidence {G : GroupAlgebraPackage} {R : RepresentationPackage G} (C : CohomologyPackage G R) where
  exactnessClosed : C.exactness
  cohomologyDefinedClosed : C.cohomologyDefined

def CohomologyClosed {G : GroupAlgebraPackage} {R : RepresentationPackage G} (C : CohomologyPackage G R) : Prop :=
  C.exactness ∧ C.cohomologyDefined

theorem cohomology_closed_from_evidence {G : GroupAlgebraPackage} {R : RepresentationPackage G} (C : CohomologyPackage G R) (E : CohomologyEvidence C) :
    CohomologyClosed C := by
  exact And.intro E.exactnessClosed E.cohomologyDefinedClosed

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse