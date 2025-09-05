import Mathlib

open Matrix

variable (F : Type*) [Field F]

/-- The standard upper unitriangular 2x2 matrix depending on t : F. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 then if j = 0 then (1 : F) else t else if j = 0 then 0 else 1

/-- The subset G = { E t | t ∈ F } of 2x2 matrices over F. -/
def G : Set (Matrix (Fin 2) (Fin 2) F) := { M | ∃ t, M = E F t }

/-- The matrices E(t) satisfy the group laws under multiplication: closure, identity and inverses.
    This implies that G is a matrix group under multiplication. -/
theorem G_is_matrix_group :
  (1 : Matrix (Fin 2) (Fin 2) F) ∈ G F ∧
  (∀ a b, a ∈ G F → b ∈ G F → a * b ∈ G F) ∧
  (∀ a, a ∈ G F → ∃ b, a * b = 1 ∧ b * a = 1) := by
  sorry
