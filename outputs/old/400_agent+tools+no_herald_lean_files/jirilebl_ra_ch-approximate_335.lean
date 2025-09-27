import Mathlib

noncomputable def f (x : ℝ) : ℝ := 1 / (1 + x ^ 2)

theorem f_power_series_at_zero : ∀ x : ℝ, |x| < 1 → f x = tsum (fun n : ℕ => ((-1 : ℝ) ^ n) * x ^ (2 * n)) := by sorry
