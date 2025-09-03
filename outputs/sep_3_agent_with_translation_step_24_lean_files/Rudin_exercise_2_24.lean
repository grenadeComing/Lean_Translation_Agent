import Mathlib

/-- Let X be a metric space in which every infinite subset has a limit point. Then X is separable: there exists a countable dense subset. -/
theorem Rudin_exercise_2_24 {X : Type*} [MetricSpace X]
  (h : ∀ s : Set X, s.Infinite → ∃ x, x ∈ closure (s \ {x})) :
  ∃ S : Set X, Set.Countable S ∧ Dense S := by sorry
