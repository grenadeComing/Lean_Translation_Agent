import Mathlib

variable (F : Type) [Field F]

/-- The 2x2 unipotent upper-triangular matrix E(t). -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := ![
  [1, t],
  [0, 1]
]

/-- The set G of matrices of the form E(t) for t ∈ F. -/
def G : Set (Matrix (Fin 2) (Fin 2) F) := { M | ∃ t : F, M = E (F := F) t }

/-- The statement translated: G is a matrix group under multiplication. -/
theorem G_is_matrix_group_under_mul : Prop := by
  -- translation: G is a matrix group under multiplication
  sorry
