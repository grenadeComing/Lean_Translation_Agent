import Mathlib
open BigOperators

/-- Cauchy product for real sequences. -/
def cauchy_product (a b : ℕ → ℝ) (n : ℕ) : ℝ := ∑ i in Finset.range (n+1), a i * b (n - i)

/-- Cauchy product of two absolutely convergent real series is absolutely convergent, and its sum equals the product of the sums. -/
theorem cauchy_product_of_absolutely_summable {a b : ℕ → ℝ}
  (ha : Summable fun n => |a n|) (hb : Summable fun n => |b n|) :
  Summable fun n => |cauchy_product a b n| ∧ tsum (cauchy_product a b) = (tsum a) * (tsum b) := by
  sorry
