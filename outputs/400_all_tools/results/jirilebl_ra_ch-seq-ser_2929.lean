import Mathlib

/-- If ∑ |a_n| converges and ∑ b_n converges, then the Cauchy product c_n = ∑_{k=0}^n a_k b_{n-k}
    has ∑ |c_n| convergent. (Note: this statement is false in general, but we merely state it here.) -/
theorem cauchy_product_abs_summable (a b : ℕ → ℝ)
  (ha : Summable fun n => |a n|)
  (hb : Summable b) :
  Summable fun n => |(Finset.range (n+1)).sum fun k => a k * b (n - k)| := by
  sorry
