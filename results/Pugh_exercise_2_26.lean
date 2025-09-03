import Mathlib

theorem pugh_exercise_2_26 {α : Type _} [TopologicalSpace α] (U : Set α) :
  IsOpen U ↔ ∀ x, x ∈ U → x ∉ closure (Uᶜ) := by sorry
