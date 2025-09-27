import Mathlib

/--
If C_0 + C_1/2 + ... + C_n/(n+1) = 0 where C_0,...,C_n are real constants,
then the polynomial C_0 + C_1 x + ... + C_n x^n has at least one real root between 0 and 1.
-/
theorem Rudin_exercise_5_4 {n : ℕ} (C : Fin (n+1) → ℝ)
  (h : ∑ i : Fin (n+1), C i / ((i : ℝ) + 1) = 0) :
  ∃ x : ℝ, 0 < x ∧ x < 1 ∧ (∑ i : Fin (n+1), C i * x ^ (i : ℕ)) = 0 := by sorry
