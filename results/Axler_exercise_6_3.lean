import Mathlib

open BigOperators

/-!
Axler, Linear Algebra Done Right, exercise 6.3: For real numbers a_1,..,a_n and b_1,..,b_n,
(show) (∑_{j=1}^n a_j b_j)^2 ≤ (∑_{j=1}^n j a_j^2) (∑_{j=1}^n b_j^2 / j).
We index with `Fin n` and use `i.val + 1` for the index j ∈ {1,..,n}.
-/

theorem Axler_exercise_6_3 {n : ℕ} (a b : Fin n → ℝ) :
  (∑ i : Fin n, a i * b i) ^ 2 ≤ (∑ i : Fin n, (i.val + 1) * (a i) ^ 2) * (∑ i : Fin n, (b i) ^ 2 / (i.val + 1)) := by
  sorry
