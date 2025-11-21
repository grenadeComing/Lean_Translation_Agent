import Mathlib

open Finset

/-- The Cauchy product sequence c_n = sum_{k=0}^n a_k * b_{n-k} -/
def cauchy_product_seq {F : Type _} [NormedField F] (a b : ℕ → F) : ℕ → F :=
  fun n => Finset.sum (range (n + 1)) fun k => a k * b (n - k)

theorem cauchy_product_of_abs_summable {F : Type _} [NormedField F] {a b : ℕ → F}
  (ha : Summable fun n => ‖a n‖) (hb : Summable b) :
  Summable (cauchy_product_seq (a := a) (b := b)) ∧ (∑' n, cauchy_product_seq (a := a) (b := b) n) = (∑' n, a n) * (∑' n, b n) := by
  sorry
