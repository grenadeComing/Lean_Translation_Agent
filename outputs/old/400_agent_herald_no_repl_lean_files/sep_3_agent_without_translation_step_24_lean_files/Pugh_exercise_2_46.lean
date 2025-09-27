import Mathlib

open Set

variable {M : Type*} [MetricSpace M]

theorem Pugh_exercise_2_46 (A B : Set M)
  (hA : IsCompact A) (hB : IsCompact B)
  (hAne : A.Nonempty) (hBne : B.Nonempty)
  (hdisj : Disjoint A B) :
  ∃ a0 b0, a0 ∈ A ∧ b0 ∈ B ∧ ∀ a ∈ A, ∀ b ∈ B, dist a0 b0 ≤ dist a b := by sorry
