import Mathlib

/-!
Axler, Linear Algebra Done Right, Exercise 6.3 (Cauchy-Schwarz with weights)
We state the inequality for real sequences a_1..a_n and b_1..b_n.
We index using `Fin n` and take the weight for index `i : Fin n` to be `(i : ℕ) + 1`.
-/

theorem Axler_exercise_6_3 {n : ℕ} (a b : Fin n → ℝ) :
  (∑ i : Fin n, a i * b i) ^ 2 ≤ (∑ i : Fin n, (((i : ℕ) : ℝ) + 1) * (a i) ^ 2) * (∑ i : Fin n, (b i) ^ 2 / (((i : ℕ) : ℝ) + 1)) := by
  sorry
