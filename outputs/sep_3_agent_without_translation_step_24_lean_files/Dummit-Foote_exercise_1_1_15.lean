import Mathlib

variable {G : Type _} [Group G]

theorem list_prod_inv_rev (l : List G) : (l.prod)⁻¹ = (l.map fun x => x⁻¹).reverse.prod := by sorry
