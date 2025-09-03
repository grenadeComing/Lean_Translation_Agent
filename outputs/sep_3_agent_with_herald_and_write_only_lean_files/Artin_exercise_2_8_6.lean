import Mathlib

variable {G H : Type _} [Group G] [Group H]

/-- The center of the product group G × H consists of exactly those pairs whose components
    lie in the centers of G and H respectively. -/
theorem center_prod_centers :
  { z : G × H | ∀ w : G × H, z * w = w * z } =
  { p : G × H | (∀ g' : G, p.1 * g' = g' * p.1) ∧ (∀ h' : H, p.2 * h' = h' * p.2) } := by sorry
