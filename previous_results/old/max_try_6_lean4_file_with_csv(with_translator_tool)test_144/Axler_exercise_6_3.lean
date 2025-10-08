import Mathlib

open Finset

/-!
Exercise: Prove that
  (\sum_{j=1}^n a_j b_j)^2 ≤ (\sum_{j=1}^n j a_j^2) (\sum_{j=1}^n b_j^2 / j)
for real numbers a_j, b_j.
We state the inequality for indices i : Fin n (i = 0..n-1) with weight (i + 1).
-/

theorem Axler_exercise_6_3 {n : ℕ} (a b : Fin n → ℝ) :
  (∑ i : Fin n, a i * b i) ^ 2 ≤
    (∑ i : Fin n, ((i : ℕ) + 1 : ℝ) * (a i) ^ 2) *
    (∑ i : Fin n, (b i) ^ 2 / ((i : ℕ) + 1 : ℝ)) := by
  sorry
