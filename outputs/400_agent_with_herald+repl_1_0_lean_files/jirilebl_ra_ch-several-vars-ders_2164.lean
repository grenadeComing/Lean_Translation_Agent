import Mathlib

open BigOperators
open Finset

variable {n : ℕ}

/-- Suppose B : (Fin n → ℝ) →L[ℝ] ℝ is defined for x by B x = ∑ i, b i * x i for a fixed b : Fin n → ℝ.
    Then the operator norm of B equals the Euclidean norm of b. -/
theorem linear_functional_opNorm_eq_norm (b : Fin n → ℝ) (B : (Fin n → ℝ) →L[ℝ] ℝ)
  (h : ∀ x, B x = ∑ i : Fin n, b i * x i) : ‖B‖ = ‖b‖ := by sorry
