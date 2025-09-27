import Mathlib

/--
Let sum_{n=0}^\infty c_n (x-a)^n be a power series with radius of convergence 0<\rho\leq \infty,
let I be as above, and let f : I -> ℝ be its sum. Then f is differentiable and
f'(x) = sum_{n=0}^\infty (n+1)c_{n+1} (x-a)^n, with radius of convergence equal to \rho.
-/
theorem power_series_derivative (a : ℝ) (c : ℕ → ℝ) (ρ : ℝ) (hρ : 0 < ρ) :
  ∀ x : ℝ, HasDerivAt (fun y => ∑' n, c n * (y - a) ^ n) (∑' n, (n + 1) * c (n + 1) * (x - a) ^ n) x := by sorry
