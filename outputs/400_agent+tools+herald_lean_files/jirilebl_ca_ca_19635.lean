import Mathlib

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. Suppose f is not constant. Show that the set { z ∈ U : f'(z)=0 } is discrete in U.
We express discreteness explicitly: for each z ∈ U with deriv f z = 0 there exists ε > 0 such that
Metric.ball z ε ∩ U ∩ {w | deriv f w = 0} = {z}.
-/
theorem discrete_set_of_deriv_eq_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  (h : ¬∃ c, ∀ z ∈ U, f z = c) :
  ∀ z ∈ U, deriv f z = 0 → ∃ ε > 0, (Metric.ball z ε ∩ U ∩ {w | deriv f w = 0}) = {z} := by sorry
