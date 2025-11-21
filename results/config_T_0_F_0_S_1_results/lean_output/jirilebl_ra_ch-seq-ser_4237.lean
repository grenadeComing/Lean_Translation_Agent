import Mathlib

/--
The Cauchy product of two absolutely convergent series is absolutely convergent,
and its sum equals the product of the sums.
-/
theorem cauchy_product_of_absolutely_convergent_series {α : Type*} [NormedField α] [CompleteSpace α]
  {a b : ℕ → α}
  (ha : Summable fun n => ‖a n‖) (hb : Summable fun n => ‖b n‖) :
  Summable fun n => ∑ k in Finset.range (n + 1), a k * b (n - k) ∧
  (∑' n, ∑ k in Finset.range (n + 1), a k * b (n - k)) = (∑' n, a n) * (∑' n, b n) := by sorry
