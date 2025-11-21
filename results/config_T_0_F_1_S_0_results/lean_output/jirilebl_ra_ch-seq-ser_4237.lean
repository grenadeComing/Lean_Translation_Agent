import Mathlib

/-- The Cauchy product of two sequences a and b: c_n = sum_{i=0}^n a_i * b_{n-i}. -/
def cauchy_prod (a b : ℕ → ℝ) : ℕ → ℝ := fun n => (Finset.range (n + 1)).sum fun i => a i * b (n - i)

/-- Show that the Cauchy product of two absolutely convergent series is absolutely convergent,
    and its sum equals the product of the sums. -/
theorem cauchy_product_of_absolutely_convergent
  {a b : ℕ → ℝ}
  (ha : Summable fun n => |a n|)
  (hb : Summable fun n => |b n|) :
  Summable (cauchy_prod a b) ∧ tsum (cauchy_prod a b) = (tsum a) * (tsum b) := by sorry
