import Mathlib

open Set

theorem Munkres_exercise_33_8 {X : Type*} [TopologicalSpace X] [CompletelyRegularSpace X]
  {A B : Set X} (hdisj : Disjoint A B) (hAclosed : IsClosed A) (hBclosed : IsClosed B)
  (hAcompact : IsCompact A) :
  ∃ f : X → ℝ, Continuous f ∧ (∀ x ∈ A, f x = 0) ∧ (∀ x ∈ B, f x = 1) ∧ ∀ x, 0 ≤ f x ∧ f x ≤ 1 := by sorry
