import Mathlib

/-- Suppose ∑_{n=0}^∞ a_n converges absolutely. Any series obtained by grouping consecutive
terms converges and has the same sum.

Formal statement: let a : ℕ → ℝ and f : ℕ → ℕ with f 0 = 0 and ∀ k, f (k+1) > f k.
Define b_k := ∑_{i=0}^{f(k+1)-f(k)-1} a_{f(k)+i} = ∑ i in Finset.range (f (k+1) - f k), a (f k + i).
If ∑' n, |a n| is summable, then ∑' k, b_k is summable and the two sums are equal. -/
theorem summable_grouping {a : ℕ → ℝ} {f : ℕ → ℕ} (h0 : f 0 = 0) (hmono : ∀ k, f (k+1) > f k)
  (ha : Summable fun n => |a n|) :
  Summable fun k => ∑ i in Finset.range (f (k+1) - f k), a (f k + i) ∧
    (∑' k, ∑ i in Finset.range (f (k+1) - f k), a (f k + i)) = ∑' n, a n := by sorry