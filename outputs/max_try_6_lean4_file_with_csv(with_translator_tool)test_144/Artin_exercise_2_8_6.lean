import Mathlib

/-- Prove that the center of the product of two groups is the product of their centers. -/
theorem center_prod_extracted {G H : Type _} [Group G] [Group H] :
  Subgroup.center (G × H) = (Subgroup.center G).prod (Subgroup.center H) := by sorry
