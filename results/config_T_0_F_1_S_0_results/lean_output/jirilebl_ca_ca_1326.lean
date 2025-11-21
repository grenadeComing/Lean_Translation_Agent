import Mathlib

/-- If f satisfies the exponential Cauchy equation f(z+w)=f(z)f(w) on ℂ and f(0)=1,
then f(z) is never zero. -/
theorem jirilebl_ca_ca_1326 (f : Complex → Complex)
  (hf : ∀ z w : Complex, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z : Complex, f z ≠ 0 := by
  sorry

/-- In particular, the complex exponential is never zero. -/
theorem complex_exp_ne_zero : ∀ z : Complex, Complex.exp z ≠ 0 := by
  sorry