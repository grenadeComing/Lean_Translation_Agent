import Mathlib

open Filter

/-- If a complex function f equals a power series \sum a_k z^k on a neighborhood of 0,
and there is a sequence of nonzero points z_n → 0 with f(z_n) = 0 for all n,
then all coefficients a_k are zero. -/
theorem power_series_zero_of_accumulation {a : ℕ → ℂ} {f : ℂ → ℂ} {zseq : ℕ → ℂ} :
  (∃ r : ℝ, 0 < r ∧ ∀ z : ℂ, Complex.abs z < r → f z = ∑' k, a k * z ^ k) →
  (∀ n, zseq n ≠ 0) →
  Tendsto zseq atTop (nhds (0 : ℂ)) →
  (∀ n, f (zseq n) = 0) →
  ∀ k, a k = 0 := by sorry
