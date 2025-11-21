import Mathlib

/- Suppose \sum a_n is conditionally convergent. Formalization:
   Let a : ℕ → ℝ. If Summable a and ¬ Summable (fun n => |a n|), then there
   does not exist a nonnegative summable sequence b : ℕ → ℝ that eventually
   dominates |a n|. -/

theorem not_eventually_dominated_by_summable_of_conditional {a : ℕ → ℝ}
  (ha : Summable a) (h : ¬ Summable fun n => abs (a n)) :
  ¬ ∃ b : ℕ → ℝ, (∀ n, 0 ≤ b n) ∧ Summable b ∧ ∃ N, ∀ n, N ≤ n → abs (a n) ≤ b n := by sorry