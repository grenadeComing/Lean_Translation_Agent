import Mathlib

/-- Rudin, Principles of Mathematical Analysis, Exercise 1.4: If E is a nonempty subset of an ordered
set, a is a lower bound of E and b is an upper bound of E, then a ≤ b. -/
theorem Rudin_exercise_1_4 {α : Type _} [Preorder α] {E : Set α} (hne : ∃ x, x ∈ E) {a b : α}
  (ha : ∀ x ∈ E, a ≤ x) (hb : ∀ x ∈ E, x ≤ b) : a ≤ b := by sorry
