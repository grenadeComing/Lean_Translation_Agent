import Mathlib

open BigOperators

theorem abs_summable_convolution_mul_tsum {a b : ℕ → ℂ}
  (ha : Summable fun n => ‖a n‖) (hb : Summable fun n => ‖b n‖) :
  let c : ℕ → ℂ := fun n => ∑ k in Finset.range (n + 1), a k * b (n - k) in
  Summable fun n => ‖c n‖ ∧ tsum c = (tsum a) * (tsum b) := by sorry