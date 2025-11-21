import Mathlib

open Matrix

-- We work with 2x2 real matrices, indices are elements of `Fin 2`.

def GL2_mat : Set (Matrix (Fin 2) (Fin 2) ℝ) := { M | Matrix.det M ≠ 0 }

/-- G is the set of invertible upper-triangular (with zero in the bottom-left) 2x2 real matrices. -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | M (1 : Fin 2) (0 : Fin 2) = 0 ∧ Matrix.det M ≠ 0 }

/-- N is the set of unipotent upper-triangular 2x2 real matrices (1 on the diagonal). -/
def N : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | M (0 : Fin 2) (0 : Fin 2) = 1 ∧ M (1 : Fin 2) (1 : Fin 2) = 1 ∧ M (1 : Fin 2) (0 : Fin 2) = 0 }

/-- The set G is a subgroup of GL(2, ℝ). We state the subgroup property explicitly:
    identity ∈ G, closure under multiplication, and existence of inverses inside G. -/
theorem G_is_subgroup_of_GL2 :
  (1 : Matrix (Fin 2) (Fin 2) ℝ) ∈ G ∧
  (∀ A B, A ∈ G → B ∈ G → A * B ∈ G) ∧
  (∀ A, A ∈ G → ∃ B, B ∈ G ∧ A * B = 1 ∧ B * A = 1) := by sorry

/-- N is a normal subgroup of G. We state (i) N ⊆ G, (ii) N is a subgroup, and
    (iii) N is normal in G in the sense that conjugation by elements of G preserves N.
    Conjugation is expressed by using existence of inverses inside G. -/
theorem N_normal_in_G :
  (N ⊆ G) ∧
  ( (1 : Matrix (Fin 2) (Fin 2) ℝ) ∈ N ∧ (∀ A B, A ∈ N → B ∈ N → A * B ∈ N) ∧ (∀ A, A ∈ N → ∃ B, B ∈ N ∧ A * B = 1 ∧ B * A = 1) ) ∧
  (∀ g n, g ∈ G → n ∈ N → (∃ ginv, ginv ∈ G ∧ g * n * ginv ∈ N ∧ g * ginv = 1 ∧ ginv * g = 1)) := by sorry
