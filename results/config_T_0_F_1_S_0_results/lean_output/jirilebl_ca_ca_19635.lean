import Mathlib

open Set Metric

theorem zeros_of_deriv_discrete (U : Set Complex) (f : Complex → Complex)
  (hU : IsOpen U) (hf : DifferentiableOn Complex f U)
  (h_nonconst : ∃ z w, z ∈ U ∧ w ∈ U ∧ f z ≠ f w) :
  ∀ z ∈ U, deriv f z = 0 → ∃ r > 0, Metric.ball z r ∩ {w | w ∈ U ∧ deriv f w = 0} = {z} := by sorry