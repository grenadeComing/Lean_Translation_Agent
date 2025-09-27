import Mathlib

open Equiv

variable {α : Type _} [Fintype α] [DecidableEq α]

/-- The permutation matrix associated to a permutation σ: entries are 1 where σ i = j and 0 otherwise. -/
def perm_matrix (σ : Perm α) : Matrix α α Int := fun i j => if σ i = j then 1 else 0

/-- The determinant of a permutation matrix is either -1 or 1. -/
theorem det_perm_matrix_is_plus_or_minus_one (σ : Perm α) : (perm_matrix σ).det ∈ ({-1, 1} : Set Int) := by sorry
