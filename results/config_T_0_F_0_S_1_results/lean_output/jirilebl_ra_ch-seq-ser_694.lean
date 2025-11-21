import Mathlib

/-!
This file states the following fact (no proof):
Let x : ℕ → ℝ be a monotone (increasing or decreasing) sequence which converges, and
assume there exists k : ℕ such that lim_{n→∞} x n = x k. Then x n = x k for all n ≥ k.
-/

theorem monotone_seq_const_from_k {x : ℕ → ℝ} {k : ℕ}
  (hmono : Monotone x) (hconv : Tendsto x atTop (𝓝 (x k))) : ∀ n, n ≥ k → x n = x k := by sorry

theorem antitone_seq_const_from_k {x : ℕ → ℝ} {k : ℕ}
  (hmono : Antitone x) (hconv : Tendsto x atTop (𝓝 (x k))) : ∀ n, n ≥ k → x n = x k := by sorry
