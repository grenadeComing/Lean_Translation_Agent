import Mathlib

/-- Rotation of R^2 by angle θ, given by the usual 2×2 rotation matrix. -/
def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun (x, y) =>
  (x * Real.cos θ - y * Real.sin θ, x * Real.sin θ + y * Real.cos θ)

/-- The map `rho θ` is the same as multiplication by the complex number `cos θ + i sin θ` after
identifying ℝ^2 with ℂ via `(x,y) ↦ x + i y`. This expresses that `rho θ` is the rotation through
angle `θ` about the origin. -/
theorem rho_is_rotation (θ : ℝ) : ∀ v : ℝ × ℝ,
  let (x, y) := v in
  rho θ v =
    let z := (Complex.ofReal (Real.cos θ) + Complex.I * Complex.ofReal (Real.sin θ)) *
             (Complex.ofReal x + Complex.I * Complex.ofReal y) in
    (z.re, z.im) := by sorry