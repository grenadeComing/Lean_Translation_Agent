import Mathlib

/--
Exercise (Rudin 4.24): Assume that f is a continuous real function defined on the open
interval (a, b) such that f((x+y)/2) ≤ (f(x)+f(y))/2 for all x, y in (a, b).
Show that f is convex on (a, b).
-/
theorem Rudin_exercise_4_24 {a b : ℝ} {f : ℝ → ℝ}
  (hcont : ContinuousOn f (Ioo a b))
  (hmid : ∀ x y, x ∈ Ioo a b → y ∈ Ioo a b → f ((x + y) / 2) ≤ (f x + f y) / 2) :
  ∀ x y, x ∈ Ioo a b → y ∈ Ioo a b → ∀ t ∈ Icc (0 : ℝ) 1,
    f ((1 - t) * x + t * y) ≤ (1 - t) * f x + t * f y := by sorry
