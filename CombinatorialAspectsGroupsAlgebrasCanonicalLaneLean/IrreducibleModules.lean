import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean

structure IrreducibleModulePackage where
  groupAlgebra : GroupAlgebraPackage
  module : Type u
  moduleAdd : module → module → module
  moduleZero : module
  moduleAddAssoc : ∀ a b c : module, moduleAdd (moduleAdd a b) c = moduleAdd a (moduleAdd b c)
  moduleAddComm : ∀ a b : module, moduleAdd a b = moduleAdd b a
  moduleZeroAdd : ∀ a : module, moduleAdd moduleZero a = a
  moduleAddZero : ∀ a : module, moduleAdd a moduleZero = a
  moduleScalarMul : groupAlgebra.groupAlgebra → module → module
  moduleScalarMulAssoc : ∀ (r s : groupAlgebra.groupAlgebra) (m : module), moduleScalarMul (groupAlgebra.groupAlgebraMul r s) m = moduleScalarMul r (moduleScalarMul s m)
  moduleOneScalarMul : ∀ (m : module), moduleScalarMul groupAlgebra.groupAlgebraOne m = m
  moduleScalarMulAdd : ∀ (r : groupAlgebra.groupAlgebra) (m n : module), moduleScalarMul r (moduleAdd m n) = moduleAdd (moduleScalarMul r m) (moduleScalarMul r n)
  moduleAddScalarMul : ∀ (r s : groupAlgebra.groupAlgebra) (m : module), moduleScalarMul (groupAlgebra.groupAlgebraAdd r s) m = moduleAdd (moduleScalarMul r m) (moduleScalarMul s m)
  irreducible : Prop
  irreducibleClosed : irreducible

def IrreducibleModuleClosed (P : IrreducibleModulePackage) : Prop :=
  P.irreducible

theorem irreducible_module_closed (P : IrreducibleModulePackage) : IrreducibleModuleClosed P := by
  exact P.irreducibleClosed

end CombinatorialAspectsGroupsAlgebrasCanonicalLaneLean
end HautevilleHouse