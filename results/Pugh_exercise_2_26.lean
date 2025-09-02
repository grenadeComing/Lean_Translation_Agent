import Mathlib

variable {M : Type _} [TopologicalSpace M] (U : Set M)

theorem Pugh_exercise_2_26 : IsOpen U ↔ ∀ x, x ∈ U → ¬ (x ∈ closure (Uᶜ) \ Uᶜ) := by sorry
