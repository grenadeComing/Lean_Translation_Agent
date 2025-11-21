import Mathlib

variable {F : Type _} [Field F]

/-- The unipotent upper-triangular 2x2 matrix with parameter t. -/
def E (t : F) : Matrix (Fin 2) (Fin 2) F := fun i j =>
  match i, j with
  | 0, 0 => 1
  | 0, 1 => t
  | 1, 0 => 0
  | 1, 1 => 1

/-- The set G = { E t | t ∈ F } of such matrices. -/
def G : Set (Matrix (Fin 2) (Fin 2) F) := Set.range (E : F → Matrix (Fin 2) (Fin 2) F)

/-- Statement: G is a group under matrix multiplication.

We phrase this by stating the identity lies in G, G is closed under multiplication,
and every element of G has a (two-sided) inverse in G. -/
theorem srdoty_alg_linear_gps_839 :
  (1 : Matrix (Fin 2) (Fin 2) F) ∈ G ∧
  (∀ A B, A ∈ G → B ∈ G → A * B ∈ G) ∧
  (∀ A, A ∈ G → ∃ B, B ∈ G ∧ A * B = 1 ∧ B * A = 1) := by sorry