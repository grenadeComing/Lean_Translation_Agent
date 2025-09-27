import Mathlib

/--
Let G be a group of order p^r where p is prime and r ≥ 1. Then the center Z(G) has order p^k for some k ≥ 1.
This statement is left as a lemma without proof (``by sorry'').
-/
theorem center_of_p_group {G : Type _} [Group G] [Fintype G] {p : ℕ} {r : ℕ}
  (hp : Nat.Prime p) (hr : Fintype.card G = p ^ r) (hrpos : 1 ≤ r)
  (hcenter : Fintype (Subgroup.center G)) :
  ∃ k : ℕ, 1 ≤ k ∧ Fintype.card (Subgroup.center G) = p ^ k := by
  sorry
