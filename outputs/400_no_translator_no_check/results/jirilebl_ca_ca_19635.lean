import Mathlib

open Set Metric

/-- Let U be open in ℂ and f : U → ℂ holomorphic (i.e. complex-differentiable on U).
    If f is not constant on U, then the set of points in U where f' = 0 is discrete in U.
    We state discreteness by: for each such point z there is a ball around z (contained in the ambient
    metric space) whose intersection with U meets the zero-set only at z. -/
theorem zeros_of_deriv_discrete (U : Set ℂ) (hU : IsOpen U) (f : ℂ → ℂ)
  (hf : DifferentiableOn ℂ f U) (hnonconst : ∃ z w, z ∈ U ∧ w ∈ U ∧ f z ≠ f w) :
  ∀ z ∈ {z : ℂ | z ∈ U ∧ deriv f z = 0}, ∃ r : ℝ, 0 < r ∧ (ball z r ∩ U ∩ {w | deriv f w = 0}) = {z} := by sorry
