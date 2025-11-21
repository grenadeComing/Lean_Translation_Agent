import Mathlib

/-- Suppose f : ℝ^n → ℝ is continuous on a compact set K ⊆ ℝ^n and differentiable on the interior of K.
If f attains a maximum at x0 ∈ interior K, then the Fréchet derivative at x0 is zero. -/
theorem fderiv_eq_zero_of_max_on_compact_interior {n : ℕ} {K : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ} {x0 : Fin n → ℝ}
  (hK : IsCompact K) (hfcont : ContinuousOn f K) (hdiff : DifferentiableOn ℝ f (interior K))
  (hx0 : x0 ∈ interior K) (hmax : ∀ x ∈ K, f x ≤ f x0) :
  fderiv ℝ f x0 = 0 := by sorry