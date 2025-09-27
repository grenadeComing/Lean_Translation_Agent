import Mathlib

variable {R : Type _} [Semiring R]
open Polynomial

/-- The derivative on polynomials is R-linear. -/
theorem polynomial_derivative_is_linear : IsLinearMap R (derivative : R[X] → R[X]) := by
  sorry
