import Mathlib

/-- Let E be a nonempty subset of an ordered set; suppose a is a lower bound of E and b is an upper bound of E. Then a ≤ b. -/
theorem Rudin_exercise_1_4 {α : Type*} [Preorder α] {E : Set α} {a b : α}
  (hne : ∃ x, x ∈ E) (h_lower : ∀ x, x ∈ E → a ≤ x) (h_upper : ∀ x, x ∈ E → x ≤ b) :
  a ≤ b := by
  sorry
