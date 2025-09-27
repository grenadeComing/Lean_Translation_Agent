import Mathlib

open Set

variable (F : Type _) [Field F]

/-- The unipotent upper-triangular 2×2 matrix E(t). -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  if i = 0 ∧ j = 0 then 1
  else if i = 0 ∧ j = 1 then t
  else if i = 1 ∧ j = 0 then 0
  else 1

/-- The set G = { E t | t ∈ F }. -/
def G : Set (Matrix (Fin 2) (Fin 2) F) := range (E F)

/-- G is a matrix group under multiplication: it contains the identity, is closed under
    multiplication, and every element has an inverse in G. -/
theorem G_is_matrix_group :
  (1 : Matrix (Fin 2) (Fin 2) F) ∈ G F ∧
  (∀ A B, A ∈ G F → B ∈ G F → A * B ∈ G F) ∧
  (∀ A, A ∈ G F → ∃ B ∈ G F, A * B = 1 ∧ B * A = 1) := by
  sorry
