import Mathlib
open BigOperators

/-- Cauchy-Schwarz weighted version:
    (∑_{j=1}^n a_j b_j)^2 ≤ (∑_{j=1}^n j a_j^2) (∑_{j=1}^n b_j^2 / j)
    We index by `Fin n` so that j = i.val + 1. -/
theorem Axler_exercise_6_3 {n : ℕ} (a b : Fin n → ℝ) :
  (∑ i : Fin n, a i * b i) ^ 2 ≤
    (∑ i : Fin n, (i.val + 1 : ℝ) * (a i) ^ 2) * (∑ i : Fin n, (b i) ^ 2 / (i.val + 1 : ℝ)) :=
by sorry
