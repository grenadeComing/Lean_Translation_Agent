import Mathlib

/--
Let X be a metric space in which every infinite subset has a limit point.
Prove that X is separable.
-/
theorem Rudin_exercise_2_24 {α : Type _} [MetricSpace α]
  (h : ∀ s : Set α, Set.Infinite s → ∃ x : α, ∀ (ε : ℝ), 0 < ε → ∃ y ∈ s, y ≠ x ∧ dist y x < ε) :
  ∃ s : Set α, s.Countable ∧ Dense s := by sorry
