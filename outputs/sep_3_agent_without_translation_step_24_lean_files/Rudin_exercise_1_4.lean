import Mathlib

open Set

theorem Rudin_exercise_1_4 {α : Type*} [Preorder α] {E : Set α} (hE : ∃ x, x ∈ E) (a b : α)
  (ha : ∀ x ∈ E, a ≤ x) (hb : ∀ x ∈ E, x ≤ b) : a ≤ b := by sorry
