import Mathlib

/--
If a real series is conditionally convergent (converges but not absolutely), then its terms
cannot decay as fast as any power 1 / n^p with p > 1. More precisely, for a real sequence
a : ℕ → ℝ, if ∑ a_n converges but ∑ |a_n| diverges, then for every p > 1 there is no constant
C such that |a_n| ≤ C / n^p for all n.
-/
theorem cond_convergent_not_fast_enough {a : ℕ → ℝ}
  (h_conv : Summable a) (h_not_abs : ¬ Summable fun n => |a n|) :
  ∀ p : ℝ, 1 < p → ¬ ∃ C : ℝ, ∀ n : ℕ, |a n| ≤ C / ((n : ℝ) ^ p) := by sorry
