import Mathlib

/-- Rudin Ex. 1.4: If E is a nonempty subset of an ordered set R,
and `a` is a lower bound of E and `b` is an upper bound of E,
then a ≤ b. -/
theorem Rudin_exercise_1_4 {R : Type _} [Preorder R] {E : Set R} (hNE : E.Nonempty) {a b : R}
  (ha : ∀ x ∈ E, a ≤ x) (hb : ∀ x ∈ E, x ≤ b) : a ≤ b := by sorry
