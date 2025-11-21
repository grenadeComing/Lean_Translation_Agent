import Mathlib

/-- If U ⊂ ℝ^n is open and f : U → ℝ is differentiable, and f is convex on U,
then for all x, y ∈ U and t ∈ [0,1] we have the usual convexity inequality.
-/
theorem convex_on_implies_convex_inequality {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : IsOpen U)
  (hd : DifferentiableOn ℝ f U)
  (hconv : ConvexOn ℝ U f) :
  ∀ x y (hx : x ∈ U) (hy : y ∈ U) (t : ℝ) (ht : 0 ≤ t ∧ t ≤ 1),
    f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y := by
  sorry
