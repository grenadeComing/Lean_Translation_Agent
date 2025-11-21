import Mathlib
open Finset

/-- Suppose ∑ a_n converges absolutely and ∑ b_n converges. Then the Cauchy product is absolutely convergent. -/
theorem cauchy_product_of_absolute_convergence {a b : ℕ → Complex} (ha : Summable (fun n => ‖a n‖)) (hb : Summable b) :
  Summable (fun n => ‖(Finset.sum (range (n + 1)) (fun k => a k * b (n - k)))‖) := by sorry
