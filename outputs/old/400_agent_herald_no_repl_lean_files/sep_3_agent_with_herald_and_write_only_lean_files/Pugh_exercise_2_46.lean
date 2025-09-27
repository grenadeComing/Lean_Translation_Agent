import Mathlib

variable {M : Type*} [MetricSpace M]

theorem Pugh_exercise_2_46 (A B : Set M) (hA : IsCompact A) (hB : IsCompact B)
  (hAne : ∃ a, a ∈ A) (hBne : ∃ b, b ∈ B) (hdisj : Disjoint A B) :
  ∃ a0 b0, a0 ∈ A ∧ b0 ∈ B ∧ ∀ a ∈ A, ∀ b ∈ B, dist a0 b0 ≤ dist a b := by
  sorry
