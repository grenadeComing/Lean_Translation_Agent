import Mathlib

open Matrix

section
variable (F : Type) [Field F]

/-- E(t) = [[1, t], [0, 1]] -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := ![![1, t], [0, 1]]

/-- The set G = { E(t) : t ∈ F } as a subset of 2x2 matrices -/
def G_set : Set (Matrix (Fin 2) (Fin 2) F) := { M | ∃ t : F, M = E t }

/-- The statement: G is a matrix group under multiplication. -/
theorem G_is_matrix_group : Prop := by
  sorry
end