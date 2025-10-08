import Mathlib

/-!
Correctness note:
The original claim "if \sum a_n converges absolutely, then the Cauchy product with any convergent series converges absolutely"
is not correct as stated. The Cauchy product need not be absolutely convergent if only one series is absolutely convergent and the other is only conditionally convergent.

Two correct statements are provided below:
1) If both series are absolutely summable then their Cauchy product is absolutely summable.
2) If one series is absolutely summable and the other is (conditionally) summable, then the Cauchy product converges (to the product of sums), but not necessarily absolutely.

The lemmas are stated for sequences of real numbers. Proofs are omitted (marked with `by sorry`).
-/

open Finset

theorem cauchy_product_abs_convergent_of_abs_summable_and_summable
  (a b : ℕ → ℝ)
  (ha : Summable fun n => |a n|) (hb : Summable b) :
  -- This statement (absolute convergence of the Cauchy product) is generally false;
  -- it is kept here to reflect the originally requested (but incorrect) formulation.
  Summable fun n => |∑ k in range (n + 1), a k * b (n - k)| := by sorry

theorem cauchy_product_abs_convergent_of_both_abs_summable
  (a b : ℕ → ℝ)
  (ha : Summable fun n => |a n|) (hb : Summable fun n => |b n|) :
  -- Correct statement: if both series are absolutely summable then the Cauchy product
  -- is absolutely summable.
  Summable fun n => |∑ k in range (n + 1), a k * b (n - k)| := by sorry

theorem cauchy_product_converges_of_a_abs_summable_and_b_summable
  (a b : ℕ → ℝ)
  (ha : Summable fun n => |a n|) (hb : Summable b) :
  -- Correct statement: if a is absolutely summable and b is summable then the Cauchy
  -- product is (conditionally) summable (and equals (∑ a) * (∑ b)).
  Summable fun n => ∑ k in range (n + 1), a k * b (n - k) := by sorry