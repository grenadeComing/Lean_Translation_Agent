import Mathlib

/-- Let z,w ∈ ℂ. If ‖z‖ = ‖w‖, then ‖z + w‖ = ‖z - w‖ ↔ z * conj w is purely imaginary. -/
theorem complex_norm_add_eq_norm_sub_iff_mul_star_imaginary {z w : ℂ} :
  ‖z‖ = ‖w‖ → (‖z + w‖ = ‖z - w‖ ↔ (z * Star.star w).re = 0) := by sorry