import Mathlib

theorem exists_zero_order_of_deriv_zero (U : Set ℂ) (hU : IsOpen U) (f : ℂ → ℂ) (z0 : ℂ)
  (hf : AnalyticAt ℂ f z0) (hderiv0 : deriv f z0 = 0) (hnonconst : ¬ IsConstantOn f U) :
  ∃ (k : ℕ) (hk : 0 < k) (g : ℂ → ℂ),
    AnalyticAt ℂ g z0 ∧ g z0 ≠ 0 ∧
    ∃ r : ℝ, 0 < r ∧ ∀ z : ℂ, z ≠ z0 → dist z z0 < r → deriv f z = (z - z0) ^ k * g z := by sorry