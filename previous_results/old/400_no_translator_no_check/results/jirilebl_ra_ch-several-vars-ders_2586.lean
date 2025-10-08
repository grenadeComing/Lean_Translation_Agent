import Mathlib

open Set

variable {n : ℕ}

/-- Suppose f : ℝ^n → ℝ is continuous on a compact set K ⊆ ℝ^n and differentiable on the interior of K.
If f attains a maximum at x0 ∈ interior K, then the derivative at x0 is zero. -/
theorem max_interior_has_zero_deriv {K : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ} {x0 : Fin n → ℝ}
  (hK : IsCompact K)
  (hcont : ContinuousOn f K)
  (hdiff : DifferentiableOn ℝ f (interior K))
  (hx : x0 ∈ interior K)
  (hmax : ∀ x ∈ K, f x ≤ f x0) :
  fderiv ℝ f x0 = 0 := by sorry
