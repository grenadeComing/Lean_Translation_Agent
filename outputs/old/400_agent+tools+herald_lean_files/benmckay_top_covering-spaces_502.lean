import Mathlib

-- Translation of the statement (declaration only, proof omitted).

variable (Z : Set Complex) (g : Complex → Complex)
variable (Z_is_domain : Prop) (g_is_analytic : Prop) (loops_nullhomotopic : Prop)

theorem analytic_log_exists_iff :
  (∃ G : Complex → Complex, (∀ z, z ∈ Z → g z = Complex.exp (G z)) ∧ g_is_analytic) ↔
  ((∀ z, z ∈ Z → g z ≠ 0) ∧ loops_nullhomotopic) := by sorry
