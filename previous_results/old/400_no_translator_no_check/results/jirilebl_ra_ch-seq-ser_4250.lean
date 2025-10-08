import Mathlib

open BigOperators

/-!
Suppose sum a_n and sum b_n are absolutely convergent series. Define c_n = sum_{k=0}^n a_k b_{n-k}.
Then sum c_n converges absolutely and sum c_n = (sum a_n) * (sum b_n).
-/

theorem cauchy_product_abs {a b : ℕ → ℝ}
  (ha : Summable (fun n => |a n|)) (hb : Summable (fun n => |b n|)) :
  (Summable (fun n => Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k))) ∧
  (tsum (fun n => Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k)) = (tsum a) * (tsum b)) := by sorry
