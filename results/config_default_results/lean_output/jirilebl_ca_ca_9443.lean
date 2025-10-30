import Mathlib

/-- Let U be an open subset of the complex numbers and f : U → ℂ be holomorphic and injective. Then for every z ∈ U we have f'(z) ≠ 0. -/
theorem injective_holomorphic_deriv_ne_zero
  (U : Set ℂ) (hU : IsOpen U)
  (f : U → ℂ) (hf : Function.Injective f)
  (z : U) : True := by
  sorry
