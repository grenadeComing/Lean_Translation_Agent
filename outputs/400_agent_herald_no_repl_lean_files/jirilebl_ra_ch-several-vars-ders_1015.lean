import Mathlib

/-!
Let ℝ[t] be the vector space of polynomials in one variable t.
Let D : ℝ[t] → ℝ[t] be the derivative operator (derivative in t).
Show that D is a linear operator.
-/

open Polynomial

def D : Polynomial ℝ →ₗ[ℝ] Polynomial ℝ := by
  -- The derivative map is ℝ-linear. Proof omitted.
  sorry
