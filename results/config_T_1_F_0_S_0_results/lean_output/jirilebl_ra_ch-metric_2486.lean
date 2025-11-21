import Mathlib

/-- Corrected statement: Let (X,d) be a metric space, and suppose s ⊂ X is compact. Let f : s → ℝ be continuous on s. Then f is Riemann integrable on s. -/
theorem integrable_of_continuous_on {X : Type*} [MetricSpace X] {s : Set X} {f : X → ℝ}
  (hs : IsCompact s) (hc : ContinuousOn f s) : IntegrableOn f s := by sorry