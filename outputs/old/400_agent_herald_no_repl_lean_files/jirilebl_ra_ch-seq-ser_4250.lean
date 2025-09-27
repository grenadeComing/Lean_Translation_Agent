import Mathlib

open BigOperators

/--
Suppose ∑ a_n and ∑ b_n are absolutely convergent series. Define c_n = ∑_{k=0}^n a_k b_{n-k}.
Then ∑ c_n converges absolutely and ∑ c_n = (∑ a_n) (∑ b_n).
-/
theorem cauchy_product_absolute {a b : ℕ → ℝ}
  (ha : Summable fun n => |a n|) (hb : Summable fun n => |b n|) :
  Summable fun n => |∑ k in Finset.range (n+1), a k * b (n - k)| ∧
  (∑' n, ∑ k in Finset.range (n+1), a k * b (n - k) = (∑' n, a n) * (∑' n, b n)) := by sorry
