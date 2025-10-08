import Mathlib

open Set

variable {M : Type _} [TopologicalSpace M]

theorem Pugh_exercise_2_26 (U : Set M) : IsOpen U ↔ ∀ x ∈ U, x ∉ closure (Uᶜ) := by
  sorry
