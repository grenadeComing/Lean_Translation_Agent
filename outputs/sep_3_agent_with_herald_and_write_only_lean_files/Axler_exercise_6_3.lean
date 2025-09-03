import Mathlib
open BigOperators
open Real Nat

/-- Prove that (\sum_{j=1}^{n} a_{j} b_{j})^{2} \leq (\sum_{j=1}^{n} j a_{j}^{2}) (\sum_{j=1}^{n} b_{j}^{2} / j)
for all real numbers a_1,...,a_n and b_1,...,b_n.
We index over `Fin n` and interpret the coefficient j as `j.val + 1`.
-/
theorem Axler_exercise_6_3 {n : ℕ} (a b : Fin n → ℝ) :
  (∑ j, a j * b j) ^ 2 ≤ (∑ j, (j + 1) * a j ^ 2) * (∑ j, b j ^ 2 / (j + 1)) := by sorry
