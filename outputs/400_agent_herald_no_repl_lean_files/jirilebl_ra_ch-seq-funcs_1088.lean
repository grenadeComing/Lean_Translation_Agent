import Mathlib

open Real

/-- Let ∑_{n=0}^∞ c_n (x-a)^n be a power series with radius of convergence 0 < ρ ≤ ∞, let I be the open interval I = { x | |x - a| < ρ } (if ρ = ∞ take I = ℝ). Let f : I → ℝ be its sum. Then f is differentiable on I and for all x ∈ I,
    f' x = ∑_{n=0}^∞ (n+1) * c (n+1) * (x - a)^n,
and the derived power series has the same radius of convergence ρ. -/
theorem power_series_has_derivative_and_same_radius {c : ℕ → ℝ} {a ρ : ℝ} {f : ℝ → ℝ}
  (hρ : 0 < ρ)
  (hf : ∀ x, |x - a| < ρ → f x = ∑' n, c n * (x - a) ^ n) :
  (∀ x, |x - a| < ρ → HasDerivAt f (∑' n, (n + 1) * c (n + 1) * (x - a) ^ n) x) ∧
  radiusOfConvergence (fun n => (n + 1) * c (n + 1)) = ρ := by sorry
