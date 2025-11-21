import Mathlib

/-- Suppose f : [a,b] → ℝ is bounded and uniformly continuous on [a,b].
    Then f is Riemann integrable on [a,b]. -/
theorem riemann_integrable_of_bounded_uniform_continuous_on_Icc {a b : ℝ} {f : ℝ → ℝ}
  (h_bound : Bounded (f '' Icc a b)) (h_uc : UniformContinuousOn f (Icc a b)) :
  RiemannIntegrableOn f (Icc a b) := by sorry
