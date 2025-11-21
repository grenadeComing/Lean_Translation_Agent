import Mathlib

/-
We define the standard rotation rho_θ on ℝ^2 via multiplication by e^{iθ} in ℂ,
and an oriented angle between nonzero vectors using Complex.arg.
We then state that the oriented angle between x and rho θ x equals θ modulo 2π.
-/

noncomputable def toC (x : ℝ × ℝ) : ℂ := x.1 + x.2 * Complex.I

noncomputable def rho (θ : ℝ) (x : ℝ × ℝ) : ℝ × ℝ :=
  let z := Complex.exp (Complex.I * θ) * toC x
  (z.re, z.im)

noncomputable def angle (x y : ℝ × ℝ) : ℝ :=
  Complex.arg (toC y) - Complex.arg (toC x)

theorem angle_between_rho_eq_theta (θ : ℝ) (x : ℝ × ℝ) (hx : x ≠ (0, 0)) :
  ∃ k : Int, angle x (rho θ x) = θ + 2 * Real.pi * k :=
by sorry
