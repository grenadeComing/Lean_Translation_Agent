import Mathlib

open Set

variable {n : ℕ} {K : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ} {x0 : Fin n → ℝ}

/-- Suppose f : ℝ^n → ℝ is continuous on a compact set K ⊆ ℝ^n and differentiable on the interior of K.
If f attains a maximum at x0 ∈ interior K, then the derivative (fderiv) at x0 is 0. -/
theorem fderiv_eq_zero_at_interior_max
  (hK : IsCompact K)
  (hf_cont : ContinuousOn f K)
  (hf_diff : DifferentiableOn ℝ f (interior K))
  (hx0 : x0 ∈ interior K)
  (hmax : ∀ x ∈ K, f x ≤ f x0) :
  fderiv ℝ f x0 = 0 := by sorry
