import Mathlib

open Set Metric Topology

variable (X : Type*) [MetricSpace X]

/-- Rudin Ex.2.24: If every infinite subset of a metric space X has a limit point (accumulation point), then X is separable. -/
theorem Rudin_exercise_2_24
  (h : ∀ s : Set X, s.Infinite → ∃ x : X, ∀ ε > 0, ∃ y ∈ s, y ≠ x ∧ dist y x < ε) :
  ∃ S : Set X, S.Countable ∧ Dense S := by
  sorry
