import Mathlib

variable {F : Type _} [Field F]

/-- The unipotent upper triangular 2x2 matrix with parameter t. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j =>
    if i = 0 ∧ j = 0 then (1 : F)
    else if i = 0 ∧ j = 1 then t
    else if i = 1 ∧ j = 0 then (0 : F)
    else (1 : F)

/-- For all s, t in F we have E(s) * E(t) = E(s + t). -/
theorem E_mul_E (s t : F) : E s * E t = E (s + t) := by sorry
