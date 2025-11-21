import Mathlib

/-!
A standard correct formulation in mathlib is that a continuous function on a closed
bounded interval is integrable (as an interval integral). The original informal
statement mentioned a general metric space and a totally bounded subset; that is
ambiguous for Riemann integrability. Here we give the classical precise form:
If a < b and f is continuous on Icc a b then f is interval integrable on [a,b].
-/

theorem continuous_on.interval_integrable {E : Type*} [TopologicalSpace E] [ENormedAddCommMonoid E]
  {a b : ℝ} (hab : a < b) {f : ℝ → E} (hf : ContinuousOn f (Set.Icc a b)) :
  IntervalIntegrable f volume a b := by sorry
