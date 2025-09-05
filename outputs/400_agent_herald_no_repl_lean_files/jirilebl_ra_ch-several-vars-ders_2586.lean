import Mathlib

open Set

variable {n : ℕ}

theorem max_on_compact_interior_derivative_zero
  {f : (Fin n → ℝ) → ℝ} {K : Set (Fin n → ℝ)} {x0 : Fin n → ℝ}
  (hK : IsCompact K) (hcont : ContinuousOn f K) (hdiff : DifferentiableOn ℝ f (interior K))
  (hx0 : x0 ∈ interior K) (hmax : IsMaxOn f K x0) :
  fderiv ℝ f x0 = 0 := by sorry
