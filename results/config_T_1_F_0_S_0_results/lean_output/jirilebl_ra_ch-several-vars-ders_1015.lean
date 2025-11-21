import Mathlib

open Polynomial

/-- Let R[t] be the vector space of polynomials in one variable t over the real numbers.
    Let D : R[t] → R[t] be the derivative operator (derivative in t).
    Show that D is a linear operator. -/

def D : Polynomial ℝ → Polynomial ℝ := derivative

theorem D_is_linear : (∀ p q : Polynomial ℝ, D (p + q) = D p + D q) ∧ (∀ (a : ℝ) (p : Polynomial ℝ), D (a • p) = a • D p) := by sorry