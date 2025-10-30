import Mathlib

open Complex

/--
Prove that if z w : ℂ with ‖z‖ = ‖w‖, then ‖z + w‖ = ‖z - w‖ iff (z * conj w).re = 0.
-/
theorem abs_add_eq_abs_sub_iff_conj_re_eq_zero {z w : ℂ} (h : ‖z‖ = ‖w‖) :
  ‖z + w‖ = ‖z - w‖ ↔ (z * conj w).re = 0 := by
  -- proof will be filled in later
  sorry