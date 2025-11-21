import Mathlib

theorem cauchy_product_of_abs_summable {a b : ℕ → Complex}
  (ha_abs : Summable fun n => Complex.abs (a n))
  (hb : Summable b) :
  let c : ℕ → Complex := fun n => ∑ k in Finset.range (n + 1), a k * b (n - k)
  in Summable c ∧ (∑' n, c n) = (∑' n, a n) * (∑' n, b n) := by sorry
