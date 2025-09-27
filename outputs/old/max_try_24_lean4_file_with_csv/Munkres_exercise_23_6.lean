import Mathlib

open Set TopologicalSpace

/-
Exercise: Let A ⊆ X. Show that if C is a connected subspace of X that intersects both A and X \ A, then C intersects Bd A.
-/

variable {X : Type*} [TopologicalSpace X]

theorem munkres_exercise_23_6 {A C : Set X} (hC : IsPreconnected C) (hA : (C ∩ A).Nonempty) (hAcomp : (C ∩ (univ \ A)).Nonempty) : (C ∩ frontier A).Nonempty := by sorry
