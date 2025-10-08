import Mathlib

/-- The center of a group as a set. -/
def center (G : Type) [Group G] : Set G := { z | ∀ g : G, z * g = g * z }

/-- The center of the product of two groups is the product of their centers. -/
theorem center_prod {G H : Type} [Group G] [Group H] :
  center (G × H) = Set.prod (center G) (center H) := by sorry
