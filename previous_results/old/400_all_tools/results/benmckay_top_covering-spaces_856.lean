import Mathlib

universe u v

constant PathConnected : Type u → Prop
constant LocallySimplyConnected : Type u → Prop
constant pi1 : Type u → Type v

constant IsGammaCovering : ∀ {α β : Type u}, (α → β) → Type v → Prop
constant Connected : Type u → Prop

theorem covering_space_from_action
  {X : Type u} [TopologicalSpace X]
  (hpc : PathConnected X) (hls : LocallySimplyConnected X)
  {Γ : Type v} [Group Γ]
  (φ : pi1 X → Γ)
  (X_phi : Type u) [TopologicalSpace X_phi] [MulAction Γ X_phi]
  (p_phi : X_phi → X) :
  IsGammaCovering (p_phi : X_phi → X) Γ ∧ Nonempty (Γ ≃ pi1 X) ∧
    (∀ (Y : Type u) [TopologicalSpace Y] (pY : Y → X),
      Connected Y → IsGammaCovering (pY : Y → X) Γ →
      ∃ φ' : pi1 X → Γ, pY = p_phi) := by
  sorry
