import Mathlib

theorem monotone_or_antitone_seq_const_from_index (x : ℕ → ℝ) (k : ℕ)
  (hmono : Monotone x ∨ Antitone x)
  (hconv : Tendsto x atTop (𝓝 (x k))) : ∀ n, n ≥ k → x n = x k := by sorry
