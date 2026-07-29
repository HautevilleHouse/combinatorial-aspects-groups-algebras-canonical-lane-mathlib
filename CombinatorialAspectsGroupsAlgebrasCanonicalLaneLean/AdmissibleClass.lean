import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  object : CombinatorialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombinatorialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse