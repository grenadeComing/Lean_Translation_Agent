import Mathlib

/-
Let F be a field and E(t) = [[1, t], [0, 1]] for t ∈ F. Show that E(s)E(t) = E(s + t).
-/

variable {F : Type _} [Field F]

/-- The unipotent upper-triangular 2x2 matrix with off-diagonal entry t. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 ∧ j = 0 then (1 : F)
  else if i = 0 ∧ j = 1 then t
  else if i = 1 ∧ j = 0 then (0 : F)
  else (1 : F)

theorem E_mul (s t : F) : E s * E t = E (s + t) := by sorry
