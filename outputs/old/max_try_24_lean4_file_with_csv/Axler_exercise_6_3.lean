import Mathlib

theorem axler_exercise_6_3 {n : Nat} (a b : Fin n → ℝ) :
  (∑ i : Fin n, a i * b i) ^ 2 ≤ (∑ i : Fin n, (i.val + 1 : ℝ) * (a i) ^ 2) * (∑ i : Fin n, (b i) ^ 2 / (i.val + 1 : ℝ)) := by
  sorry
