import Mathlib

/-- Let x and y be elements of G. Prove that xy = yx iff y⁻¹ x y = x iff x⁻¹ y⁻¹ x y = 1. -/
theorem xy_eq_yx_iff_y_inv_xy_eq_x_iff_x_inv_y_inv_xy_eq_one {G : Type*} [Group G] (x y : G) :
  (x * y = y * x ↔ y⁻¹ * x * y = x) ∧ (y⁻¹ * x * y = x ↔ x⁻¹ * y⁻¹ * x * y = 1) := by sorry
