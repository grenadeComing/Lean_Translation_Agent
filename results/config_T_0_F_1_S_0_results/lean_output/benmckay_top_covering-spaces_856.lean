import Mathlib

universe u

constant IsPathConnected : Type u → Prop
constant IsLocallySimplyConnected : Type u → Prop
constant IsConnected : Type u → Prop

constant GroupAction : Type u → Type u → Prop
constant IsGammaCovering : ∀ (X Y G : Type u), (Y → X) → Prop
constant IsGroupIso : Type u → Type u → Prop

theorem benmckay_top_covering_spaces_856
  {X : Type u}
  (path_connected_X : IsPathConnected X)
  (locally_simply_connected_X : IsLocallySimplyConnected X)
  {pi1X G : Type u}
  (phi : pi1X → G)
  {X_phi : Type u}
  (act : GroupAction G X_phi)
  (p_phi : X_phi → X) :
  IsGammaCovering X X_phi G p_phi ∧ IsGroupIso G pi1X ∧
    (∀ {Y : Type u} (p : Y → X), IsGammaCovering X Y G p → IsConnected Y → ∃ (phi' : pi1X → G), True) := by
  sorry
