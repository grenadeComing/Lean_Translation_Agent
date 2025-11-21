import Mathlib
open Matrix

variable {F : Type*} [Field F]

noncomputable def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 then if j = 0 then (1 : F) else t else if j = 0 then (0 : F) else (1 : F)

/-- For the matrix E(t) = [[1, t], [0, 1]] we have E(t) * E(-t) = I. -/
theorem E_mul_Eneg_eq_one (t : F) : E t * E (-t) = 1 := by sorry
