import Mathlib

/-!
Exercise (Pugh 2.26).
Prove that a set U ⊆ M is open iff none of its points are limits of its complement.
-/-

variable {M : Type _} [TopologicalSpace M]

theorem Pugh_exercise_2_26 (U : Set M) : IsOpen U ↔ ∀ x ∈ U, x ∉ closure (M \ U) := by sorry
