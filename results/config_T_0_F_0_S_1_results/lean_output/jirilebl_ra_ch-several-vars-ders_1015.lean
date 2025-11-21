import Mathlib

/-!
Let ℝ[t] be the vector space of polynomials in one variable t (Polynomial ℝ).
Let D : ℝ[t] → ℝ[t] be the derivative operator (derivative in t).
We state that D is linear, i.e. it is additive and homogeneous over ℝ.
-/

def derivative_operator : Polynomial ℝ → Polynomial ℝ := Polynomial.derivative

theorem derivative_operator_is_linear :
  (∀ p q : Polynomial ℝ, derivative_operator (p + q) = derivative_operator p + derivative_operator q) ∧
  (∀ (a : ℝ) (p : Polynomial ℝ), derivative_operator (a • p) = a • derivative_operator p) := by sorry
