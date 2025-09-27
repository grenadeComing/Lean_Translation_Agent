import Mathlib

open Set Filter Metric Complex
open scoped Topology

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. Suppose f is not constant.
    Show that the set { z ∈ U | deriv f z = 0 } is discrete in U. -/
theorem discrete_set_of_deriv_eq_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (h_nonconst : ¬ ∃ c : ℂ, ∀ z ∈ U, f z = c) :
  (∀ z ∈ U, deriv f z = 0 → ∃ r > 0, ∀ w, w ∈ U → dist w z < r → deriv f w = 0 → w = z) := by sorry
