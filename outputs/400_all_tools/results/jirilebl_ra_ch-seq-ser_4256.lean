import Mathlib

theorem cauchy_product_summable (a b : ℕ → ℝ) (ha : Summable fun n => |a n|) (hb : Summable b) :
  Summable (fun n => Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)) ∧
  tsum (fun n => Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)) = tsum a * tsum b := by
  sorry
