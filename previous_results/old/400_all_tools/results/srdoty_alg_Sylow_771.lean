import Mathlib

open Equiv

/-- Let n ≥ 6 and let A be a subgroup of Perm (Fin n) (intended to be A_n).
    Let N be a proper normal subgroup of A. For a fixed i ∈ Fin n, let
    G_i = {σ ∈ A | σ i = i} be the subgroup of permutations that fix i.
    Then N contains G_i. -/
lemma contains_fixed_point_subgroup (n : ℕ) (hn : 6 ≤ n)
  (A N : Subgroup (Perm (Fin n)))
  (hN_subA : N ≤ A)
  (hN_normal : ∀ g ∈ A, ∀ x ∈ N, g * x * g⁻¹ ∈ N)
  (hN_proper : N ≠ A)
  (i : Fin n) :
  ∀ σ : Perm (Fin n), σ ∈ A → σ i = i → σ ∈ N := by sorry
