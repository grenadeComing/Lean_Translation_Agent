import Mathlib

open Real

/-- Define the sequence s: ℕ → ℝ by s 0 = sqrt 2 and s (n+1) = sqrt (2 + sqrt (s n)). -/
def s : ℕ → ℝ
  | 0 => sqrt 2
  | n+1 => sqrt (2 + sqrt (s n))

/-- Lemma: s n < 2 for all n. -/
theorem s_lt_two (n : ℕ) : s n < 2 := by
  induction n with
  | zero =>
    -- s 0 = √2 < 2
    show sqrt 2 < 2
    apply sqrt_lt (by norm_num)
  | succ n ih =>
    -- s (n+1) = √(2 + √(s n)) and use monotonicity of sqrt and IH
    have : sqrt (s n) < sqrt 2 := by
      apply sqrt_lt (by linarith [ih])
    have : 2 + sqrt (s n) < 2 + sqrt 2 := by linarith
    apply (sqrt_lt (by linarith))

/-- The sequence s_n converges. -/
theorem s_converges : Tendsto s atTop (𝓝 (2 : ℝ)) := by
  -- We claim the limit is 2; prove monotone increasing and bounded above by 2, then use monotone convergence
  sorry
