import Mathlib

open Matrix

/-- G: 2x2 real matrices of the form [[a, b], [0, c]] that are invertible. -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | IsUnit (M : Matrix (Fin 2) (Fin 2) ℝ) ∧ M (1 : Fin 2) (0 : Fin 2) = 0 }

/-- N: unipotent upper-triangular matrices [[1, b], [0, 1]] (invertible). -/
def N : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | IsUnit (M : Matrix (Fin 2) (Fin 2) ℝ) ∧ M (0 : Fin 2) (0 : Fin 2) = 1 ∧ M (1 : Fin 2) (1 : Fin 2) = 1 ∧ M (1 : Fin 2) (0 : Fin 2) = 0 }

/-- G is a subgroup of GL(2,R) (expressed here by identity in G, closure under product, and existence of inverses). -/
theorem G_subgroup :
  (1 : Matrix (Fin 2) (Fin 2) ℝ) ∈ G ∧
  (∀ A B, A ∈ G → B ∈ G → IsUnit (A * B) ∧ (A * B) (1 : Fin 2) (0 : Fin 2) = 0) ∧
  (∀ A, A ∈ G → ∃ B, IsUnit B ∧ A * B = 1 ∧ B * A = 1 ∧ B (1 : Fin 2) (0 : Fin 2) = 0) := by sorry

/-- N is a normal subgroup of G. We state that N is a subgroup (identity, closure, inverses) and normality under conjugation by elements of G. -/
theorem N_normal :
  (1 : Matrix (Fin 2) (Fin 2) ℝ) ∈ N ∧
  (∀ X Y, X ∈ N → Y ∈ N → IsUnit (X * Y) ∧ (X * Y) (0 : Fin 2) (0 : Fin 2) = 1 ∧ (X * Y) (1 : Fin 2) (1 : Fin 2) = 1 ∧ (X * Y) (1 : Fin 2) (0 : Fin 2) = 0) ∧
  (∀ X, X ∈ N → ∃ Y, IsUnit Y ∧ X * Y = 1 ∧ Y * X = 1 ∧ Y (0 : Fin 2) (0 : Fin 2) = 1 ∧ Y (1 : Fin 2) (1 : Fin 2) = 1 ∧ Y (1 : Fin 2) (0 : Fin 2) = 0) ∧
  (∀ g n, g ∈ G → n ∈ N → ∃ g_inv, IsUnit g_inv ∧ g * g_inv = 1 ∧ g_inv * g = 1 ∧ (g * n * g_inv) ∈ N) := by sorry
