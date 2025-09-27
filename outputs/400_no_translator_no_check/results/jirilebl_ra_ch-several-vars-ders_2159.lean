import Mathlib

-- Using the standard euclidean norm on ℝ^n.
-- Suppose A : ℝ → ℝ^n is defined by A x = x • a for a fixed a : ℝ^n.
-- Then the operator norm of A equals the Euclidean norm of a.

open ContinuousLinearMap

theorem opNorm_of_const_smul {n : ℕ} (a : EuclideanSpace ℝ (Fin n))
  (f : ℝ →L[ℝ] EuclideanSpace ℝ (Fin n)) (h : ∀ x, f x = x • a) :
  ‖f‖ = ‖a‖ := by sorry
