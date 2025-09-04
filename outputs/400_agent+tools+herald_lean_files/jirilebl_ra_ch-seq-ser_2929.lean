import Mathlib

/-- If (a_n) is absolutely summable and (b_n) is summable (over ℝ), then the Cauchy
    product c_n = \sum_{k=0}^n a_k * b_{n-k} is summable. -/
theorem cauchy_product_summable_of_abs_summable {a b : ℕ → ℝ}
  (ha : Summable fun n => abs (a n)) (hb : Summable b) :
  Summable (fun n => Finset.sum (Finset.range (n+1)) fun k => a k * b (n - k)) := by sorry
