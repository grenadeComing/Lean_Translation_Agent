import Mathlib

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. Suppose f is not constant. 
    Then the set { z ∈ U | deriv f z = 0 } is discrete in U, i.e. every point of the set
    has a neighborhood in U meeting the set only at that point. -/
theorem discrete_set_of_derivative_eq_zero (U : Set ℂ) (hU : IsOpen U)
  (f : ℂ → ℂ) (hf : DifferentiableOn ℂ f U) (h_nonconst : ¬∃ c, ∀ z ∈ U, f z = c) :
  ∀ z ∈ U, deriv f z = 0 → ∃ V, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ (V ∩ { w | deriv f w = 0 }) = {z} := by sorry
