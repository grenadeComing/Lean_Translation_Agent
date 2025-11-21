import Mathlib
open Finset

/-- Show that the Cauchy product of two absolutely convergent series is absolutely convergent, and its sum equals the product of the sums. -/
theorem cauchy_product_abs_summable {E : Type*} [NormedField E] {f g : ℕ → E}
  (hf_abs : Summable fun n => ‖f n‖) (hg_abs : Summable fun n => ‖g n‖) :
  Summable (fun k => (Finset.range (k+1)).sum fun i => f i * g (k - i)) ∧
  tsum (fun k => (Finset.range (k+1)).sum fun i => f i * g (k - i)) = (tsum f) * (tsum g) := by sorry
