import Mathlib

open BigOperators

theorem jirilebl_convolution_of_absolutely_summable {a b : ℕ → ℝ}
  (ha : Summable fun n => abs (a n)) (hb : Summable fun n => abs (b n)) :
  (Summable (fun n => abs (Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)))) ∧
  ((∑' n, Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)) =
    (∑' n, a n) * (∑' n, b n)) := by sorry
