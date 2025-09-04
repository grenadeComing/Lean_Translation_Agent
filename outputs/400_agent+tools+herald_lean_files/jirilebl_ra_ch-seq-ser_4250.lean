import Mathlib
open BigOperators Finset

/-- cauchy product terms -/
def c (a b : ℕ → ℝ) (n : ℕ) : ℝ := Finset.sum (Finset.range (n + 1)) (fun k => a k * b (n - k))

/-- Suppose ∑ a_n and ∑ b_n are absolutely convergent series. Show that ∑ c_n defined by
    c_n = ∑_{k=0}^n a_k b_{n-k} converges absolutely and ∑ c_n = (∑ a_n)(∑ b_n). -/
theorem cauchy_product_abs_summable {a b : ℕ → ℝ} (ha : Summable (fun n => |a n|)) (hb : Summable (fun n => |b n|)) :
  Summable (fun n => |c a b n|) ∧ (∑' n, c a b n) = (∑' n, a n) * (∑' n, b n) := by
  sorry
