import Mathlib

open Set

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Let U ⊂ E (e.g. ℝ^n) be open and let f : U → ℝ be differentiable. If f is convex on U,
    then for all x,y ∈ U and t ∈ [0,1], f(t • x + (1 - t) • y) ≤ t f(x) + (1 - t) f(y). -/
theorem convex_on_implies_convex_inequality {U : Set E} {f : E → ℝ}
  (hU : IsOpen U) (hf : DifferentiableOn ℝ f U) (hconv : ConvexOn ℝ U f) :
  ∀ (x y : E) (t : ℝ), x ∈ U → y ∈ U → t ∈ Icc (0 : ℝ) 1 →
    f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y := by sorry
