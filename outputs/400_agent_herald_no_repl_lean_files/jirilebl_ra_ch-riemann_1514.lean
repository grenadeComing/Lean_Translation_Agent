import Mathlib

/-!
Suppose f : [a,b] → ℝ is bounded and uniformly continuous. Then f is Riemann integrable.
-/

theorem uniform_continuous_on.interval_integrable_of_bounded {f : ℝ → ℝ} {a b : ℝ}
  (hab : a ≤ b)
  (hf_unif : UniformContinuousOn f (Icc a b))
  (hf_bdd : Bounded (f '' Icc a b)) :
  IntervalIntegrable f volume a b := by sorry
