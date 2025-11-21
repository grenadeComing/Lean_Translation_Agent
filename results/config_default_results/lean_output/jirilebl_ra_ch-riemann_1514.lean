import Mathlib

/-- Suppose f : [a,b] → ℝ is bounded and uniformly continuous on [a,b]. Then f is Riemann (interval) integrable. -/
theorem riemann_integrable_of_uniform_continuous_on_Icc {a b : ℝ} {f : ℝ → ℝ} :
  UniformContinuousOn f (Icc a b) → BddAbove (f '' Icc a b) → BddBelow (f '' Icc a b) →
  IntervalIntegrable f MeasureTheory.volume a b := by sorry
