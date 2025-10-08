import Mathlib

/-- If f is continuous on an open interval (a, b) and satisfies the midpoint convexity
    inequality f((x+y)/2) ≤ (f x + f y)/2 for all x,y in (a,b), then f is convex on (a,b). -/
theorem midpoint_convex_continuous_implies_convex_on {a b : ℝ} {f : ℝ → ℝ} (hab : a < b)
  (hcont : ContinuousOn f (Set.Ioo a b))
  (hmid : ∀ x y, x ∈ Set.Ioo a b → y ∈ Set.Ioo a b → f ((x + y) / 2) ≤ (f x + f y) / 2) :
  ConvexOn ℝ (Set.Ioo a b) f := by sorry
