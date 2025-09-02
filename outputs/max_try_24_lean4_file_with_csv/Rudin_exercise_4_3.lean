import Mathlib

/-- Let X be a metric space and f : X → ℝ a continuous function. Let Z(f) := { p ∈ X | f(p) = 0 } be the zero set of f. Prove Z(f) is closed. -/
theorem Rudin_exercise_4_3 {X : Type*} [MetricSpace X] {f : X → Real} (hf : Continuous f) : IsClosed (f ⁻¹' ({0} : Set Real)) := by sorry
