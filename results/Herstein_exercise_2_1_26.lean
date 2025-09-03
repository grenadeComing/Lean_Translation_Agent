import Mathlib

/-- If G is a finite group, prove that, given a ∈ G, there is a positive integer n, depending on a, such that a^n = e. -/
theorem exists_n_pow_eq_one_extracted {G : Type _} [Group G] [Fintype G] (a : G) : ∃ n : ℕ, 0 < n ∧ a ^ n = 1 := by sorry
