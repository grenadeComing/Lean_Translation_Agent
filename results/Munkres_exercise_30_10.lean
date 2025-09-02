import Mathlib

open Set

theorem Munkres_exercise_30_10 {α : ℕ → Type*} [∀ n, TopologicalSpace (α n)]
  (h : ∀ n, ∃ s : Set (α n), s.Countable ∧ Dense s) :
  ∃ s : Set (∀ n, α n), s.Countable ∧ Dense s := by sorry
