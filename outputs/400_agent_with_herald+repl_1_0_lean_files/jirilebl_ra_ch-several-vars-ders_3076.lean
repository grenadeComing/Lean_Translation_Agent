import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

/-- If f is differentiable on an open set U and convex on U, then f satisfies the usual convexity
inequality: for all x, y ∈ U and t ∈ [0,1], f (t • x + (1 - t) • y) ≤ t f x + (1 - t) f y. -/
theorem jirilebl_ra_ch_several_vars_ders_3076 {U : Set E} {f : E → ℝ}
  (hU : IsOpen U) (hf : DifferentiableOn ℝ f U) (hfc : ConvexOn U f) :
  ∀ (x y : E) (t : ℝ), x ∈ U → y ∈ U → t ∈ Icc (0 : ℝ) (1 : ℝ) →
    f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y := by sorry
