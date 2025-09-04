import Mathlib

/- If U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective,
   then f'(z) ≠ 0 for every z ∈ U. -/

theorem injective_holomorphic_deriv_ne_zero {U : Set Complex} (hU : IsOpen U) (f : Complex → Complex)
  (hf : DifferentiableOn ℂ f U) (hinj : Function.Injective f) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry
