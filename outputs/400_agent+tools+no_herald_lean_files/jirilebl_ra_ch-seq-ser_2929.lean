import Mathlib
open BigOperators

/-!
Suppose \sum_{n=1}^\infty a_n converges absolutely. Show the Cauchy product with any convergent series converges absolutely.
We state the result for real sequences.  (This file only gives the statement; proof omitted.)
-/

theorem cauchy_product_abs_summable_of_a_abs_summable (a b : ℕ → ℝ)
  (ha : Summable (fun n => abs (a n))) (hb : Summable b) :
  Summable (fun n => abs (Finset.sum (Finset.range (n+1)) fun k => a k * b (n - k))) := by sorry
