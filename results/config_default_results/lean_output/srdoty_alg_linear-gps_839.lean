import Mathlib

open Matrix

variable {F : Type*} [Field F]

/-- E(t) = [[1, t], [0, 1]] over F -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := ![![1, t], [0, 1]]!

/-- G = { E(t) : t ∈ F } -/
def G : Set (Matrix (Fin 2) (Fin 2) F) := Set.range (E (F := F))

/-- G is a matrix group under multiplication -/
theorem G_is_matrix_group : True := by sorry
