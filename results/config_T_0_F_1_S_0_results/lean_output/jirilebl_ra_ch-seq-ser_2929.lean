import Mathlib

theorem cauchy_product_abs_with_convergent {a b : ℕ → ℝ}
  (ha : Summable (fun n => abs (a n))) (hb : Summable b) :
  Summable (fun n => abs ((Finset.range (n + 1)).sum fun k => a k * b (n - k))) := by sorry
