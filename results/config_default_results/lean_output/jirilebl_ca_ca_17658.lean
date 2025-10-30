import Mathlib

/-
Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series converging in { z ∈ ℂ : |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w ∈ { z ∈ ℂ : |z - z0| < ε } such that |p(w)| < |p(z0)|.
-/
theorem exists_point_with_smaller_modulus
  (ε : ℝ) (hε : ε > 0) (z0 : ℂ) (p : ℂ → ℂ) (hz0 : p z0 ≠ 0) :
  ∃ w : ℂ, ‖w - z0‖ < ε ∧ ‖p w‖ < ‖p z0‖ := by
  sorry
