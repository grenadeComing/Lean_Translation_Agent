import Mathlib

theorem cauchy_product_abs_summable_tsum_mul {a b : ℕ → ℝ}
  (ha : Summable (fun n => |a n|)) (hb : Summable (fun n => |b n|)) :
  let c : ℕ → ℝ := fun n => ∑ i in Finset.range (n + 1), a i * b (n - i)
  (Summable (fun n => |c n|)) ∧ (∑' n, c n) = (∑' n, a n) * (∑' n, b n) := by sorry