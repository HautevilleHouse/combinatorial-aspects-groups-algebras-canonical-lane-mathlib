import CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CombinatorialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CombinatorialAdmittedObject where
  space : CombinatorialSpace
  groupStructure : Prop
  algebraStructure : Prop
  combinatorialAspect : Prop
  witnessModel : Type
  witnessTopology : TopologicalSpace witnessModel
  certification : Prop
  conclusion : certification

structure CombinatorialEndgameState where
  object : CombinatorialAdmittedObject

def CombinatorialWitnessClosed (O : CombinatorialAdmittedObject) : Prop :=
  O.certification

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse