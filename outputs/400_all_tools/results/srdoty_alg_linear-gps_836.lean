import Mathlib

variable {F : Type} [Field F]

/-- The unipotent 2x2 matrix E(t) = [[1, t], [0, 1]] over a field F. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j =>
    if i = 0 then
      if j = 0 then (1 : F) else t
    else
      if j = 0 then 0 else 1

/-- Multiplicativity: E(s) * E(t) = E(s + t). -/
theorem E_mul_E (s t : F) : E s * E t = E (s + t) := by sorry
