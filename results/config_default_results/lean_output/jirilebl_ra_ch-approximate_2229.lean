import Mathlib

/-
  Translation of the statement:
  Let ε > 0 and p be a nonconstant complex polynomial, or more generally a nonconstant power series converging
  in { z ∈ ℂ : |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists w in the disk around z0 of radius ε
  such that |p(w)| < |p(z0)|.
  This is a standard consequence of the Open Mapping Theorem for holomorphic functions.
-/
lemma exists_w_in_disk_of_nonconstant_polynomial_or_power_series
  {ε : ℝ} {z0 : ℂ} (p : ℂ → ℂ)
  (hε : 0 < ε)
  (hp0 : p z0 ≠ 0) :
  ∃ w : ℂ, ‖w - z0‖ < ε ∧ ‖p w‖ < ‖p z0‖ := by
  sorry
