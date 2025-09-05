import Mathlib

variable {n : ℕ}

-- Mean value inequality for multivariable functions on R^n
-- f : (Fin n → ℝ) → ℝ has continuous partial derivatives on a convex set s.
-- If ∥fderiv ℝ f x∥ ≤ M for all x ∈ s, then
-- |f y - f x - fderiv ℝ f x (y - x)| ≤ M * ∥y - x∥.

theorem mean_value_inequality_multivar
  (s : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ) (M : ℝ)
  (hconv : Convex ℝ s) (hcd : ContDiffOn ℝ 1 f s)
  (hbound : ∀ x ∈ s, ‖fderiv ℝ f x‖ ≤ M) :
  ∀ x y (hx : x ∈ s) (hy : y ∈ s),
    abs (f y - f x - fderiv ℝ f x (y - x)) ≤ M * ‖y - x‖ := by sorry
