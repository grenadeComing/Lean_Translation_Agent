import Mathlib

universe u

variable {Γ : Type u} [Group Γ]
variable {Y X : Type u} [TopologicalSpace Y] [TopologicalSpace X]

constant CoveringAction : Prop
constant IsSimplyConnected : Prop
constant IsLocallySimplyConnected : Prop
constant IsHausdorff : Prop
constant IsUniversalCoveringMap : Prop
constant fundamental_group (Z : Type u) (z0 : Z) : Type u
constant GroupIso : Prop

theorem benmckay_top_covering_spaces_731
  (p : Y → X) (act : Γ → Y → Y)
  (h_cov : CoveringAction) (hYsimply : IsSimplyConnected) (hYloc : IsLocallySimplyConnected)
  (hYhaus : IsHausdorff) (x0 : X) :
  IsUniversalCoveringMap ∧ GroupIso := by sorry
