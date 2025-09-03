import Mathlib

variable {G : Type _} [Group G] {H : Type _} [Group H]

theorem center_prod : Subgroup.center (G × H) = Subgroup.prod (Subgroup.center (G := G)) (Subgroup.center (G := H)) := by
  sorry
