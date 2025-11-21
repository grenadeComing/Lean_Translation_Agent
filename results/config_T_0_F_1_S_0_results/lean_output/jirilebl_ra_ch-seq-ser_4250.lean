import Mathlib

open Finset

/-- Cauchy product: c_n = sum_{k=0}^n a_k * b_{n-k} -/
def cauchy_product_jl {α : Type _} [Semiring α] (a b : ℕ → α) (n : ℕ) :=
  (range (n + 1)).sum fun k => a k * b (n - k)

/-- If (a_n) and (b_n) are absolutely summable in a normed field, then their Cauchy
product (c_n) is absolutely summable and the sum equals the product of the sums. -/
theorem cauchy_product_jl_of_absolutely_summable
  {α : Type _} [NormedField α] {a b : ℕ → α}
  (ha : Summable fun n => ‖a n‖) (hb : Summable fun n => ‖b n‖) :
  (Summable fun n => ‖cauchy_product_jl (a := a) (b := b) n‖) ∧ (∑' n, cauchy_product_jl (a := a) (b := b) n) = (∑' n, a n) * (∑' n, b n) := by sorry
