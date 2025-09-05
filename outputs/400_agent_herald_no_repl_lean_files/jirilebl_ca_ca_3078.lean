import Mathlib

/-- If f is holomorphic on an open set U, then f is analytic: at each z0 ∈ U there exists R > 0 and coefficients a n such that the power series ∑' n, a n (z - z0)^n converges to f on the disk of radius R contained in U. One can take R to be the distance from z0 to the complement of U (possibly R = ∞). -/
theorem holomorphic_on_is_analytic {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (hf : IsHolomorphicOn f U) : ∀ z0 ∈ U, ∃ (R : ℝ) (a : ℕ → ℂ),
    0 < R ∧ Ball z0 R ⊆ U ∧ (∀ z, |z - z0| < R → (∑' n : ℕ, a n * (z - z0) ^ n) = f z) := by sorry
