import Mathlib

/-- Let \sum c_n (x-a)^n be a power series with radius of convergence 0 < ρ ≤ ∞, let I be as above,
    and let f : I → ℝ be its sum. Then f is differentiable and
    f'(x) = \sum (n+1) c_{n+1} (x-a)^n, with radius of convergence equal to ρ. -/
theorem power_series.has_deriv_on_of_radius {a : ℝ} {c : ℕ → ℝ} {ρ : ℝ}
  (hρ : 0 < ρ) :
  let I := { x : ℝ | |x - a| < ρ } in
  let f : I → ℝ := fun x => ∑' n, c n * (x - a) ^ n in
  (∀ x : I, DifferentiableAt ℝ f x) ∧
  (∀ x : I, deriv f x = ∑' n, (n+1) * c (n+1) * (x - a) ^ n) ∧
  radius_of_convergence (fun n => (n+1) * c (n+1)) = ρ := by sorry