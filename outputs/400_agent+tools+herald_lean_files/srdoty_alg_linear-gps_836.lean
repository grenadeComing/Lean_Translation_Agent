import Mathlib

variable {F : Type _} [Field F]

/-- The unipotent upper-triangular 2x2 matrix depending on t. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  match i, j with
  | 0, 0 => (1 : F)
  | 0, 1 => t
  | 1, 0 => 0
  | 1, 1 => 1

/-- Multiplication law: E(s) * E(t) = E(s + t). -/
theorem E_mul_E (s t : F) : E s * E t = E (s + t) := by sorry
