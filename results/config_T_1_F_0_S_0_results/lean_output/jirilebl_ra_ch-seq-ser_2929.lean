import Mathlib

open Finset

/-- Suppose ∑ a_n converges absolutely and ∑ b_n converges.  Define the Cauchy product
    c_n = ∑_{k=1}^n a_k * b_{n+1-k}.  Then ∑ |c_n| converges. -/
theorem cauchy_product_abs_summable {a b : ℕ → ℝ} (ha : Summable fun n => |a n|) (hb : Summable b) :
  Summable fun n => |∑ k in (Ico 1 (n + 1) : Finset ℕ), a k * b (n + 1 - k)| := by sorry