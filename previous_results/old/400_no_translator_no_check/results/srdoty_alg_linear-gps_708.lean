import Mathlib

open Complex

noncomputable def rho (θ : ℝ) (v : ℝ × ℝ) : ℝ × ℝ :=
  let z : ℂ := (v.1 : ℂ) + (v.2 : ℂ) * Complex.I
  ((Complex.exp (Complex.I * θ) * z).re, (Complex.exp (Complex.I * θ) * z).im)

/-- For any real θ and nonzero vector v in R^2, the oriented angle between v and rho θ v
    equals θ up to an integer multiple of 2π. This expresses that rho θ is rotation by θ. -/
theorem angle_between_rho_eq_theta (θ : ℝ) {v : ℝ × ℝ} (hv : v ≠ (0,0)) :
  ∃ k : Int,
    (Complex.arg (Complex.exp (Complex.I * θ) * ((v.1 : ℂ) + (v.2 : ℂ) * Complex.I)) -
      Complex.arg ((v.1 : ℂ) + (v.2 : ℂ) * Complex.I) - θ) = 2 * Real.pi * (k : ℝ) :=
  by
  -- proof omitted
  sorry
