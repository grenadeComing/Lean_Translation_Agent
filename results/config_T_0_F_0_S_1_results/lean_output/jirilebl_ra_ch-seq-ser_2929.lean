import Mathlib

-- Note: The original formulation "if \sum a_n is absolutely convergent then
-- the Cauchy product with any convergent series converges absolutely" is
-- incorrect. The classical correct statement (Mertens' theorem) is that if one
-- series is absolutely convergent and the other is (conditionally) convergent,
-- then the Cauchy product converges (and equals the product of the sums).

theorem cauchy_product_summable_of_abs_summable_left {a b : ℕ → ℝ}
  (ha : Summable fun n => |a n|) (hb : Summable b) :
  Summable fun n => ∑ i in Finset.range (n + 1), a i * b (n - i) := by sorry