import Mathlib

open Equiv

/-- Conjugation of a transposition: for any permutation σ of a Type with decidable equality,
    σ * swap x y * σ⁻¹ = swap (σ x) (σ y).
    This general fact specializes to the statement in the problem when one takes
    σ = β^{i-1}, x = 1, y = 2 (with the appropriate indexing convention).
-/
theorem swap_conj {α : Type _} [DecidableEq α] (σ : Perm α) (x y : α) :
  swap (σ x) (σ y) = σ * swap x y * σ⁻¹ :=
by
  -- proof omitted
  sorry
