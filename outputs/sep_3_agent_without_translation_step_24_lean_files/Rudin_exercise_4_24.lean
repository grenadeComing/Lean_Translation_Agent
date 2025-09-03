import Mathlib

open Set

/--
Exercise: Assume that f is a continuous real function defined on (a, b)
such that f((x+y)/2) ≤ (f x + f y)/2 for all x, y ∈ (a, b). Prove that f is convex on (a,b).
-/

theorem Rudin_exercise_4_24 {a b : ℝ} {f : ℝ → ℝ}
  (hcont : ContinuousOn f (Ioo a b))
  (hmid : ∀ x y, x ∈ Ioo a b → y ∈ Ioo a b → f ((x + y) / 2) ≤ (f x + f y) / 2) :
  ConvexOn ℝ (Ioo a b) f := by sorry
