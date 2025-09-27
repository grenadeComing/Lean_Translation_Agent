import Mathlib

/-- Suppose the real series ∑ a_n is conditionally convergent: it is summable but not absolutely summable.
    Then for every ε > 0 the series ∑ (n+1)^ε * |a_{n+1}| is not summable (equivalently the tail from n=1).
    We state the conclusion using the indexing by `n + 1` so there is no issue with `0 ^ ε`.
-/
theorem conditional_series_not_fast_enough (a : ℕ → ℝ)
  (h_sum : Summable a) (h_not_abs : ¬ Summable fun n => abs (a n)) :
  ∀ ε : ℝ, 0 < ε → ¬ Summable fun n => (((n + 1 : ℕ) : ℝ) ^ ε) * abs (a (n + 1)) :=
by sorry