import Mathlib

/-!
Exercise (Rudin 4.3).
Let X be a metric space and f : X → ℝ a continuous function.
Let Z(f) := { p ∈ X | f p = 0 }. Prove that Z(f) is closed.
-/

variable {X : Type _} [MetricSpace X] {f : X → ℝ}

theorem Rudin_exercise_4_3 (hf : Continuous f) : IsClosed { p : X | f p = 0 } := by
  -- proof omitted
  sorry
