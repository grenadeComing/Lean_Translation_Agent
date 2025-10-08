import Mathlib

open Finset

/-!
Correct statement: If (a_n) is absolutely summable and (b_n) is summable, then the Cauchy product
c_n = \sum_{m=0}^n a_m b_{n-m} is summable (Mertens' theorem).
-/

theorem summable.cauchy_product_of_abs_summable {F : Type*} [NormedField F] {a b : ℕ → F}
  (ha : Summable (fun n => ‖a n‖)) (hb : Summable b) :
  Summable (fun n => Finset.sum (Finset.range (n + 1)) (fun m => a m * b (n - m))) := by
  sorry
