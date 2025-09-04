import Mathlib
open BigOperators
open Complex

/-!
Show that the Cauchy product of two absolutely convergent series is absolutely convergent,
and its sum equals the product of the sums.
-/

theorem cauchy_product_of_absolutely_summable {a b : ℕ → ℂ}
  (ha : Summable (fun n => Complex.abs (a n))) (hb : Summable (fun n => Complex.abs (b n))) :
  Summable (fun n => Complex.abs (Finset.sum (Finset.range (n + 1)) fun m => a m * b (n - m))) ∧
  tsum (fun n => Finset.sum (Finset.range (n + 1)) fun m => a m * b (n - m)) = tsum a * tsum b := by
  sorry
