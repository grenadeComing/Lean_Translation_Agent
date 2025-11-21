import Mathlib

universe u v

variable {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]

/-- The fundamental group of a product is the product of the fundamental groups. -/
noncomputable def pi_1_prod (x0 : X) (y0 : Y) :
  fundamental_group (X × Y) (x0, y0) ≃* (fundamental_group X x0 × fundamental_group Y y0) := by sorry
