import Mathlib

/-- Let U ⊂ ℝ^n be open and let f : U → ℝ be differentiable. Show that if f is convex on U,
then for all x, y ∈ U and t ∈ [0,1], f (t • x + (1-t) • y) ≤ t * f x + (1-t) * f y. -/
theorem convex_on_implies_convex_combination {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : IsOpen U) (hd : DifferentiableOn ℝ f U) (hcon : ConvexOn ℝ U f) :
  ∀ x y, x ∈ U → y ∈ U → ∀ t, t ∈ Icc (0 : ℝ) 1 → f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y := by sorry