import Mathlib

/-- A real number is rational if it equals p / q for integers p,q with q ≠ 0. -/
def is_rational (x : ℝ) : Prop := ∃ p q : Int, q ≠ 0 ∧ x = (p : ℝ) / (q : ℝ)

/-- Irrational is the negation of is_rational. -/
def is_irrational (x : ℝ) : Prop := ¬ is_rational x

/-- Rudin exercise 1.1(a): If r is rational (r ≠ 0) and x is irrational, then r + x is irrational. -/
theorem Rudin_exercise_1_1a {r x : ℝ} (hr : is_rational r) (hrnz : r ≠ 0) (hx : is_irrational x) : is_irrational (r + x) := by
  sorry
