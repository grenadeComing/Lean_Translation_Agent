import Mathlib

theorem conditional_not_o_n_pow (a : ℕ → ℝ) (h_sum : Summable a)
  (h_not_abs : ¬ Summable fun n => |a n|) :
  ∀ ε : ℝ, ε > 0 → ∀ C : ℝ, C > 0 → ∃ n : ℕ, |a n| > C / Real.rpow (n : ℝ) (1 + ε) := by sorry
