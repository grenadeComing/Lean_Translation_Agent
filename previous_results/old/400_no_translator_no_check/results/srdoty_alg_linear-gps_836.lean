import Mathlib

variable {F : Type*} [Field F]

open Matrix

/-- The elementary upper triangular 2x2 matrix with 1's on the diagonal and t in the (0,1)-entry. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 ∧ j = 0 then (1 : F)
  else if i = 0 ∧ j = 1 then t
  else if i = 1 ∧ j = 0 then (0 : F)
  else (1 : F)

theorem E_mul (s t : F) : E s * E t = E (s + t) := by sorry
