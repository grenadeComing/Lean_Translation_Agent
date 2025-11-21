import Mathlib

open Complex Real

/-- The standard rotation map rho θ on R^2, written as pairs (x, y). -/
def rho (θ : ℝ) (v : ℝ × ℝ) : ℝ × ℝ :=
  (cos θ * v.fst - sin θ * v.snd, sin θ * v.fst + cos θ * v.snd)

/-- View an element of R^2 as a complex number. -/
def toComplex (v : ℝ × ℝ) : Complex := v.fst + v.snd * Complex.I

/-- For any real angle θ and any nonzero vector X ∈ R^2, the arguments of the
corresponding complex numbers differ by θ modulo 2π. This expresses that rho θ
is rotation by θ. -/
theorem angle_between_rho_eq_theta (θ : ℝ) {X : ℝ × ℝ} (hX : X ≠ (0, 0)) :
  ∃ (k : ℤ), Complex.arg (toComplex (rho θ X)) = Complex.arg (toComplex X) + θ + 2 * Real.pi * (k : ℝ) :=
by sorry