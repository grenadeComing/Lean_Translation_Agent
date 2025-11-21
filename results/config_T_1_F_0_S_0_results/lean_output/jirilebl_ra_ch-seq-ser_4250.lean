import Mathlib

/-- Cauchy product for absolutely convergent series in ℝ.
If ∑ |a_n| and ∑ |b_n| converge, then the Cauchy product c_n = ∑_{k=0}^n a_k b_{n-k}
converges absolutely and its sum equals the product of the sums. -/
theorem cauchy_product_abs_summable_tsum_mul (a b : ℕ → ℝ)
  (ha : Summable fun n => |a n|)
  (hb : Summable fun n => |b n|) :
  Summable fun n => |∑ k in range (n + 1), a k * b (n - k)| ∧
  (∑' n, ∑ k in range (n + 1), a k * b (n - k)) = (∑' n, a n) * (∑' n, b n) := by sorry
