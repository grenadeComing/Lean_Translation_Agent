import Mathlib

def cauchy_prod (a b : ℕ → ℝ) : ℕ → ℝ := fun n => Finset.sum (Finset.range (n + 1)) (fun k => a k * b (n - k))

theorem cauchy_product_summable {a b : ℕ → ℝ}
  (ha : Summable fun n => |a n|)
  (hb : Summable fun n => |b n|) :
  Summable (cauchy_prod a b) ∧ (tsum (cauchy_prod a b) = (tsum a) * (tsum b)) := by
  sorry
