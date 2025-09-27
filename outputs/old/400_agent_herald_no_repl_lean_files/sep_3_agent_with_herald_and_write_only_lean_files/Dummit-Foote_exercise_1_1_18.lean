import Mathlib
open Function

/-- Let $x$ and $y$ be elements of $G$. Prove that $xy=yx$ if and only if $y^{-1}xy=x$ if and only if $x^{-1}y^{-1}xy=1$. -/
theorem xy_eq_yx_iff_yx_eq_xy_iff_x_inv_y_inv_xy_eq_one {G : Type*} [Group G] (x y : G) :
    x * y = y * x ↔ y⁻¹ * x * y = x ↔ x⁻¹ * y⁻¹ * x * y = 1 := by sorry
