import Mathlib

variable {n : ℕ}

/-- Let U ⊂ ℝ^n be open and f : U → ℝ be differentiable. If f is convex on U, then for all x, y ∈ U
and t ∈ [0,1], we have f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y. -/
theorem convex_on_differentiable_implies_convex_inequality
  {U : Set (Fin n → ℝ)} (hU : IsOpen U) {f : (Fin n → ℝ) → ℝ}
  (hd : DifferentiableOn ℝ f U) (hconv : ConvexOn ℝ U f) :
  ∀ x y, x ∈ U → y ∈ U → ∀ t, t ∈ Icc (0 : ℝ) 1 →
    f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y := by sorry
