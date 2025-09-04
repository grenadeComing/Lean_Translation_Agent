import Mathlib

open Set

theorem outer_measure_zero_of_approx_small {α : Type _} (m : Set α → ENNReal)
  (mono : ∀ A B : Set α, A ⊆ B → m A ≤ m B)
  (X : Set α)
  (h : ∀ ε : ENNReal, 0 < ε → ∃ Y, X ⊆ Y ∧ m Y ≤ ε) :
  m X = 0 := by sorry
