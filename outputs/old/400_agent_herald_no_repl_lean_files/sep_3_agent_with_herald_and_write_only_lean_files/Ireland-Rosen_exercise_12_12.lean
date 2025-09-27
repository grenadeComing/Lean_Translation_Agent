import Mathlib

/-
  Exercise: Show that sin(pi/12) is algebraic.
  We state the existence of a nonzero rational polynomial vanishing at sin(pi/12).
-/

theorem sin_pi_div_12_is_algebraic : ∃ p : Polynomial ℚ, p ≠ 0 ∧ p.eval (Real.sin (Real.pi / 12)) = 0 := by sorry
