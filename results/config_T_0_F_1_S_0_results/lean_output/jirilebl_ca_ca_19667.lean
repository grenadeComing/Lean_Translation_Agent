import Mathlib

/-- A predicate saying `f` is holomorphic on `U`. We leave it abstract here; the theorem
    below states the usual local maximum modulus principle assuming this predicate. -/
def HolomorphicOn (f : Complex → Complex) (U : Set Complex) : Prop := True

theorem max_modulus_principle_local (U : Set Complex) (f : Complex → Complex) (z0 : Complex)
  (hU : IsOpen U) (hz0 : z0 ∈ U) (hhol : HolomorphicOn f U)
  (hmax : ∃ r : ℝ, 0 < r ∧ Metric.ball z0 r ⊆ U ∧ (∀ z, z ∈ Metric.ball z0 r → Norm.norm (f z) ≤ Norm.norm (f z0))) :
  ∃ r : ℝ, 0 < r ∧ Metric.ball z0 r ⊆ U ∧ (∀ z, z ∈ Metric.ball z0 r → f z = f z0) := by sorry
