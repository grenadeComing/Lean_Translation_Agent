import Mathlib
open Complex
open scoped Topology

/-- Let U ⊂ C be open and f : U → C be holomorphic. Suppose f is not constant. Show that the set { z ∈ U : f'(z)=0 } is discrete in U. -/
theorem discrete_set_of_nonconstant_derivative {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f U) (hfn : ¬ IsConstantOn U f) :
  ∀ z ∈ U, ∃ r > 0, ∀ w ∈ U, (|w - z| < r) → (deriv f w = 0 → w = z) := by sorry
