import Mathlib

open Set

variable {a b : ℝ}
variable {gamma : ℝ → ℂ}
variable {theta : ℝ → ℝ}

-- We introduce abstract predicates for piecewise smoothness and simplicity of a curve
variable (PiecewiseSmoothOn : (ℝ → ℂ) → Set ℝ → Prop)
variable (SimpleCurveOn : (ℝ → ℂ) → Set ℝ → Prop)

theorem arg_lift_simple_closed_curve
  (hab : a < b)
  (hgamma_cont : ContinuousOn gamma (Icc a b))
  (hgamma_piecewise : PiecewiseSmoothOn gamma (Icc a b))
  (hgamma_simple : SimpleCurveOn gamma (Icc a b))
  (hgamma_nz : ∀ t ∈ Icc a b, gamma t ≠ 0)
  (h_closed : gamma a = gamma b)
  (htheta_cont : ContinuousOn theta (Icc a b))
  (htheta_vals : ∀ t ∈ Icc a b, Complex.exp (Complex.I * theta t) = gamma t / ‖gamma t‖) :
  ∃ (theta_tilde : ℝ → ℝ),
    (∀ t ∈ Icc a b, Complex.exp (Complex.I * theta_tilde t) = gamma t / ‖gamma t‖) ∧
    theta_tilde a = theta a ∧
    ((theta_tilde b = theta_tilde a + 2 * Real.pi) ↔ (0 ∈ interior (range gamma))) := by sorry