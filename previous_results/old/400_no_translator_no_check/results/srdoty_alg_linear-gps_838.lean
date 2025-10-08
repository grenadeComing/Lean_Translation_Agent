import Mathlib

variable {F : Type*} [Field F]

/-- The elementary matrix E(t) = [[1, t], [0, 1]] over a field F. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 ∧ j = 0 then (1 : F)
  else if i = 0 ∧ j = 1 then t
  else if i = 1 ∧ j = 0 then (0 : F)
  else (1 : F)

/-- For all t, E(t) * E(-t) = I. (Equivalently E(t)^{-1} = E(-t).) -/
theorem E_mul_Eneg (t : F) : E t * E (-t) = 1 := by sorry
