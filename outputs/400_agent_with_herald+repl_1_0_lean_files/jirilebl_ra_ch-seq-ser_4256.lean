import Mathlib

open BigOperators

/-- Suppose (a_n) is absolutely summable and (b_n) is summable. Define
    c_n = ∑_{k=0}^n a_k * b_{n-k}.
Then (c_n) is summable and its sum equals the product of the sums of (a_n) and (b_n). -/
theorem cauchy_product_summable (a b : ℕ → Real)
  (ha : Summable (fun n => Real.abs (a n))) (hb : Summable b) :
  Summable (fun n => ∑ k in Finset.range (n + 1), a k * b (n - k)) ∧
  (tsum fun n => ∑ k in Finset.range (n + 1), a k * b (n - k)) = (tsum a) * (tsum b) := by
  sorry
