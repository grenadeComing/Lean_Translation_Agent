import Mathlib

variable {α : Type _} [Preorder α]

/-- Let E be a nonempty subset of an ordered set; suppose a is a lower bound of E and b is an
upper bound of E. Then a ≤ b. -/
theorem Rudin_exercise_1_4 {E : Set α} (hne : E.Nonempty) {a b : α}
  (ha : ∀ x ∈ E, a ≤ x) (hb : ∀ x ∈ E, x ≤ b) : a ≤ b := by sorry
