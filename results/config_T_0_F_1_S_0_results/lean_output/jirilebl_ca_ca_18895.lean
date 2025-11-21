import Mathlib

/-- Let z ∈ ℂ. Arg(e^z) = Im z (mod 2π). -/
theorem arg_exp_eq_im_mod_2pi (z : ℂ) :
  ∃ k : Int, Complex.arg (Complex.exp z) = z.im - 2 * (k : ℝ) * Real.pi :=
by sorry

/-- |e^z| = e^{Re z}. We state the squared form to avoid deprecated `Complex.abs`. -/
theorem normsq_exp_eq_exp_re_sq (z : ℂ) :
  Complex.normSq (Complex.exp z) = (Real.exp z.re) ^ 2 :=
by sorry
