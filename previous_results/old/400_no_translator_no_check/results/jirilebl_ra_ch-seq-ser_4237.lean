import Mathlib

open BigOperators

variable {K : Type*} [NormedField K] [CompleteSpace K]

/-- Cauchy product of two sequences a and b. -/
def cauchyProd (a b : ℕ → K) (n : ℕ) : K :=
  (Finset.range (n + 1)).sum fun k => a k * b (n - k)

/-- If two series are absolutely convergent (summable of norms), then their Cauchy product
    is absolutely convergent and its sum equals the product of the sums. -/
theorem cauchy_product_of_abs_summable {a b : ℕ → K}
  (ha : Summable (fun n => ‖a n‖)) (hb : Summable (fun n => ‖b n‖)) :
  (Summable (fun n => ‖cauchyProd a b n‖)) ∧ ((tsum fun n => cauchyProd a b n) = (tsum a) * (tsum b)) := by
  sorry
