import Mathlib

/-- If f : U → ℂ is holomorphic on an open set U, then f is analytic: for each z0 ∈ U there exists
    R > 0 and coefficients a : ℕ → ℂ such that the power series ∑' a_n (z-z0)^n converges to f on
    the disk {z | dist z z0 < R}. -/
theorem holomorphic_on_analytic {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : ∀ z ∈ U, DifferentiableAt ℂ f z) :
  ∀ z0 ∈ U, ∃ (R : ℝ) (a : ℕ → ℂ), 0 < R ∧ ∀ z, dist z z0 < R → (∑' n : ℕ, a n * (z - z0) ^ n) = f z := by sorry
