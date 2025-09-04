import Mathlib
open scoped BigOperators

/-- The Cauchy product of two absolutely convergent series is absolutely convergent,
    and its sum equals the product of the sums. -/
theorem summable_cauchy_product {α : Type*} [NormedField α] {a b : ℕ → α}
  (ha : Summable (fun n => ‖a n‖)) (hb : Summable (fun n => ‖b n‖)) :
  Summable (fun n => ‖Finset.sum (Finset.range (n + 1)) (fun k => a k * b (n - k))‖) ∧
    (∑' n, Finset.sum (Finset.range (n + 1)) (fun k => a k * b (n - k))) = (∑' n, a n) * (∑' n, b n) := by sorry
