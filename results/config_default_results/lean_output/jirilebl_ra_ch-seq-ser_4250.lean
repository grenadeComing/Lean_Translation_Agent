import Mathlib

/-- The Cauchy product of absolutely summable sequences is absolutely summable
    and its sum equals the product of sums. -/

def c (a : ℕ → ℝ) (b : ℕ → ℝ) (n : ℕ) : ℝ :=
  (Finset.range (n + 1)).sum (fun k => a k * b (n - k))

theorem cauchy_product_abs_conv_of_summable
  (a b : ℕ → ℝ)
  (ha : Summable fun n => |a n|)
  (hb : Summable fun n => |b n|) :
  Summable (fun n => |c a b n|) ∧
  tsum (fun n => c a b n) = tsum a * tsum b := by
  -- placeholders for proof
  sorry
