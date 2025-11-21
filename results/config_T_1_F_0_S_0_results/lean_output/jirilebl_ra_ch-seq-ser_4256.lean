import Mathlib

/-- Suppose the series ∑ a_n converges absolutely and ∑ b_n converges. 
    Let c_n = ∑_{k=0}^n a_k b_{n-k}. Then ∑ c_n converges and its sum equals
    (∑ a_n) * (∑ b_n). -/
theorem cauchy_product_of_summable {a b : ℕ → ℝ} (ha_abs : Summable fun n => |a n|) (hb : Summable b) :
  Summable (fun n => Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)) ∧
  (∑' n, Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)) = (∑' n, a n) * (∑' n, b n) := by sorry