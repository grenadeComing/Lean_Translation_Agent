import Mathlib
open BigOperators

/-- If \sum a_n is absolutely convergent and \sum b_n is convergent then the cauchy product \sum c_n with c_n = \sum_{k=0}^n a_k * b_{n-k} converges to (\sum a_n) * (\sum b_n). -/
theorem cauchy_product_summable {𝕜 : Type _} [NormedField 𝕜] {a b : ℕ → 𝕜}
  (ha : Summable (fun n => ‖a n‖)) (hb : Summable b) :
  let c := fun n => ∑ k in Finset.range (n + 1), a k * b (n - k) in
  Summable c ∧ (∑' n, c n) = (∑' n, a n) * (∑' n, b n) := by sorry
