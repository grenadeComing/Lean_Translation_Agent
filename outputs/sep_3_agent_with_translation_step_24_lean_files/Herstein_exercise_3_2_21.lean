import Mathlib

open Equiv

variable {α : Type _} [DecidableEq α] [Fintype α]

/-- If σ and τ are two permutations that disturb no common element and σ * τ = 1,
    then σ = 1 and τ = 1. -/
theorem herstein_exercise_3_2_21 {σ τ : Perm α} (h_mul : σ * τ = 1)
  (h_disjoint : (σ.support ∩ τ.support) = ∅) : σ = 1 ∧ τ = 1 := by sorry
