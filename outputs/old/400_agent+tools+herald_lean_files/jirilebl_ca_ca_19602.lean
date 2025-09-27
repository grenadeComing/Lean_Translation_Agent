import Mathlib

open Complex Set

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. Suppose f is not constant and f'(z0)=0.
    Then z0 is a zero of f' of some finite order: there exist n > 0 and an analytic g on a
    neighborhood V of z0 with g z0 ≠ 0 and for all z in V, deriv f z = (z - z0) ^ n * g z. -/
theorem exists_finite_order_zero_of_deriv {U : Set ℂ} {z0 : ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : AnalyticOn ℂ f U) (h_nonconst : ∃ w ∈ U, f w ≠ f z0) (hz0 : z0 ∈ U)
  (hder : deriv f z0 = 0) :
  ∃ (n : ℕ) (V : Set ℂ) (g : ℂ → ℂ),
    0 < n ∧ IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ AnalyticOn ℂ g V ∧ g z0 ≠ 0 ∧
      ∀ z ∈ V, deriv f z = (z - z0) ^ n * g z := by sorry
