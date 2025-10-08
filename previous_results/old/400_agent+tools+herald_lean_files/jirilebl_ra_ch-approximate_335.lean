import Mathlib

noncomputable def f (x : ℝ) : ℝ := 1 / (1 + x ^ 2)

theorem f_analytic_at_zero :
  ∃ r : ℝ, 0 < r ∧ ∀ x : ℝ, |x| < r → f x = ∑' (n : ℕ), ((-1 : ℝ) ^ n) * x ^ (2 * n) := by sorry

theorem series_convergence_radius_one :
  (∀ z : ℝ, |z| < 1 → Summable (fun n : ℕ => ((-1 : ℝ) ^ n) * z ^ (2 * n))) ∧
  (∀ z : ℝ, |z| > 1 → ¬Summable (fun n : ℕ => ((-1 : ℝ) ^ n) * z ^ (2 * n))) := by sorry
