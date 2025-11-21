import Mathlib

/--
Let (x_n) be a convergent monotone sequence in ℝ. Suppose there exists k ∈ ℕ such that
lim_{n → ∞} x_n = x_k. Then x_n = x_k for all n ≥ k.
This formulation allows monotone to mean either nondecreasing (Monotone) or nonincreasing (Antitone).
-/
theorem monotone_seq_eq_of_limit_eq_term (x : ℕ → ℝ) (k : ℕ)
  (hmono : Monotone x ∨ Antitone x)
  (hlim : Filter.Tendsto x Filter.atTop (nhds (x k))) :
  ∀ n, n ≥ k → x n = x k := by sorry
