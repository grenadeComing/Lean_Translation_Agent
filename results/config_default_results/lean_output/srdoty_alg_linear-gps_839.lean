import Mathlib

variable (F : Type _) [Field F]

/-- The unipotent upper-triangular 2x2 matrix depending on t : F. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  match i, j with
  | (0 : Fin 2), (0 : Fin 2) => (1 : F)
  | (0 : Fin 2), (1 : Fin 2) => t
  | (1 : Fin 2), (0 : Fin 2) => (0 : F)
  | (1 : Fin 2), (1 : Fin 2) => (1 : F)

/-- G = { E t | t ∈ F } as a subset of 2x2 matrices over F. -/
def G : Set (Matrix (Fin 2) (Fin 2) F) := Set.range (E (F := F))

/-- G is a matrix group under multiplication: identity in G, closed under multiplication, and closed under inverses. -/
theorem G_is_matrix_group :
  (E (F := F) 0) ∈ G ∧
  (∀ A B : Matrix (Fin 2) (Fin 2) F, A ∈ G → B ∈ G → A * B ∈ G) ∧
  (∀ A : Matrix (Fin 2) (Fin 2) F, A ∈ G → ∃ B : Matrix (Fin 2) (Fin 2) F, B ∈ G ∧ A * B = E (F := F) 0 ∧ B * A = E (F := F) 0) := by
  sorry
