import Mathlib

/--
Suppose f : [a,b] → ℝ is bounded and uniformly continuous. Then f is Riemann integrable on [a,b].
This is stated for a function f : ℝ → ℝ which is uniformly continuous and bounded on the closed
interval Icc a b. We require a ≤ b.
-/
theorem uniform_continuous_bounded_on_Icc_riemann_integrable {a b : ℝ} (f : ℝ → ℝ)
  (hab : a ≤ b)
  (huc : UniformContinuousOn f (Icc a b))
  (hbd : BoundedOn f (Icc a b)) :
  Riemann.integrable_on f (Icc a b) := by sorry