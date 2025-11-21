import Mathlib

/-- If ∑ a_n converges absolutely and ∑ b_n converges, then the Cauchy product
    c_n = ∑_{k=0}^n a_k b_{n-k} defines a convergent series and its sum equals
    the product of the sums. -/
theorem cauchy_product_abs_summable {a b : ℕ → ℝ} (ha : Summable fun n => |a n|) (hb : Summable b) :
  Summable (fun n => Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)) ∧
  (∑' n, (Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k) : ℝ)) = (∑' n, a n) * (∑' n, b n) := by sorry
