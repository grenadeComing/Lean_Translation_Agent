import Mathlib

/-- Let ε > 0 and z0 ∈ ℂ. Let p : ℂ → ℂ be a function which is (in the intended
    statement) a nonconstant complex polynomial or more generally a nonconstant power
    series converging in {z : ℂ | |z - z0| < ε}, and suppose p z0 ≠ 0.

    Then there exists w with |w - z0| < ε such that |p w| < |p z0|. -/
theorem exists_strict_smaller_value_in_ball {ε : ℝ} {z0 : ℂ} (p : ℂ → ℂ)
  (hε : 0 < ε)
  (hp_nonconst : ∃ z : ℂ, p z ≠ p z0)
  (hp_is_poly_or_power_series : Prop)
  (hpz0 : p z0 ≠ 0) :
  ∃ w : ℂ, (Complex.abs (w - z0) < ε) ∧ (Complex.abs (p w) < Complex.abs (p z0)) := by sorry
