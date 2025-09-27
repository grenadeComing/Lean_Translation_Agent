import Mathlib

universe u

variable {X : Type u} [MetricSpace X]

/-- Abstract predicate for Riemann integrability on a set. -/
constant RiemannIntegrableOn : (X → ℝ) → Set X → Prop

theorem continuous_on_totally_bounded_riemann_integrable
  {s : Set X} (f : X → ℝ) (hcont : ContinuousOn f s) (ht : TotallyBounded s) :
  RiemannIntegrableOn f s := by sorry
