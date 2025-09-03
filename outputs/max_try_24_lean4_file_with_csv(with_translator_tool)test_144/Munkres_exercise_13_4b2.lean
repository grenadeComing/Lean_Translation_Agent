import Mathlib

variable {X : Type _} {ι : Sort _} (T : ι → TopologicalSpace X)

theorem Munkres_exercise_13_4b2 :
  ∃! (t : TopologicalSpace X),
    (∀ i, t ≤ T i) ∧ ∀ s : TopologicalSpace X, (∀ i, s ≤ T i) → s ≤ t := by
  sorry
