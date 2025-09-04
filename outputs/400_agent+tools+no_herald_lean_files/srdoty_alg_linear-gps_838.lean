import Mathlib

open scoped Matrix

variable {F : Type _} [Field F]

/-- The elementary unipotent matrix E(t) = [[1, t], [0, 1]] -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := !![1, t; 0, 1]

/-- E(t) * E(-t) = I -/
theorem E_mul_E_neg (t : F) : E t * E (-t) = 1 := by sorry

/-- Therefore the inverse of E(t) is E(-t). -/
theorem E_inv_eq (t : F) : (E t)⁻¹ = E (-t) := by sorry
