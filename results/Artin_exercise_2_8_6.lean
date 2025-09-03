import Mathlib

universe u v

/-- The center of the product of two groups is the product of their centers. -/
theorem center_prod {G : Type u} {H : Type v} [Group G] [Group H] :
  Subgroup.center (G × H) = Subgroup.prod (Subgroup.center G) (Subgroup.center H) := by sorry
