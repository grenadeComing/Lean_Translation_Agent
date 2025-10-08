import Mathlib

open BigOperators

/-- Define the Cauchy product sequence c_n = \sum_{k=0}^n a_k b_{n-k}. -/
def c (a b : ℕ → ℝ) (n : ℕ) : ℝ := Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)

/-- If \sum a_n converges absolutely and \sum b_n converges, then the Cauchy product
    series \sum c_n converges and its sum equals the product of the sums. -/
theorem cauchy_product_of_absolute_and_convergent {a b : ℕ → ℝ}
  (ha : Summable fun n => |a n|) (hb : Summable b) :
  Summable (c a b) ∧ (tsum (c a b) = (tsum a) * (tsum b)) := by
  sorry
