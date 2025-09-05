import Mathlib

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. Suppose f is not constant and f'(z0)=0.
    Then z0 is a zero of f' of some finite order: there exist n ∈ ℕ, r>0 and a holomorphic g on
    ball(z0,r) with g(z0) ≠ 0 such that for all z in the ball one has f'(z) = (z - z0)^n * g(z).
-/
theorem derivative_zero_has_finite_order {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (hf : IsHolomorphicOn f U) (h_nonconst : ¬IsConstantOn f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (h_deriv0 : deriv f z0 = 0) :
  ∃ (n : ℕ) (r : ℝ) (g : ℂ → ℂ), 0 < r ∧ ball z0 r ⊆ U ∧ n ≥ 1 ∧ IsHolomorphicOn g (ball z0 r) ∧ g z0 ≠ 0 ∧
    ∀ z ∈ ball z0 r, deriv f z = (z - z0) ^ n * g z := by sorry
