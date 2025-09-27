import Mathlib

open Equiv

/-- Conjugation of a transposition by a permutation: sigma (a b) sigma^{-1} = (sigma a sigma b). -/
theorem perm_conj_swap {α : Type _} [DecidableEq α] (σ : Perm α) (a b : α) :
  (σ.trans (swap a b)).trans σ.symm = swap (σ a) (σ b) := by sorry
