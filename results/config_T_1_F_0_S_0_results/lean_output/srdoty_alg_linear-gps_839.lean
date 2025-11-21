import Mathlib

open Matrix

variable {F : Type*} [Field F]

/-- The unipotent upper-triangular 2x2 matrix with parameter t. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := ![![1, t], ![0, 1]]

/-- The set G = {E t | t ∈ F}. -/
def G : Set (Matrix (Fin 2) (Fin 2) F) := Set.range E

/-- G is a subgroup of the multiplicative monoid of 2×2 matrices over F (hence a matrix group). -/
theorem g_is_subgroup : IsSubgroup (G : Set (Matrix (Fin 2) (Fin 2) F)) := by sorry