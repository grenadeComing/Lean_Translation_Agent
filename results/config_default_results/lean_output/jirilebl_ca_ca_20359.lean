import Mathlib

/-- For all complex z, the inequalities ‖sin z‖ ≤ (1/2) * exp ‖z‖ and ‖cos z‖ ≤ (1/2) * exp ‖z‖. -/
theorem jirilebl_ca_ca_20359 : ∀ z : Complex,
  ‖Complex.sin z‖ ≤ (1 / 2 : ℝ) * Real.exp (‖z‖) ∧
  ‖Complex.cos z‖ ≤ (1 / 2 : ℝ) * Real.exp (‖z‖) :=
by sorry