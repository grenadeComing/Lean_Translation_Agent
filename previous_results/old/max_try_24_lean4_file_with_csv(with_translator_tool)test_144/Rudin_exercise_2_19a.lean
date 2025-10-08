import Mathlib

open Set

theorem Rudin_exercise_2_19a {X : Type _} [MetricSpace X] {A B : Set X}
  (hA : IsClosed A) (hB : IsClosed B) (hdisj : A ∩ B = ∅) :
  (closure A ∩ B = ∅) ∧ (A ∩ closure B = ∅) := by sorry
