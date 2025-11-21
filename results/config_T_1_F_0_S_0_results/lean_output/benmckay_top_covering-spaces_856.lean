import Mathlib

/--
Take a path connected and locally simply connected space `X`, a group `Γ`, and a group
morphism `φ : fundamental_group X x0 →* Γ`. Suppose that `Γ` acts on a space `X_phi` and
that `p_phi : X_phi → X` is the projection map exhibiting `X_phi` as the associated
Γ-covering (action by deck transformations, free and properly discontinuous, with
`X_phi / Γ ≃ X`).

Then `p_phi` is a `Γ`-covering space with `Γ ≃* fundamental_group X x0`, and any
connected `Γ`-covering space `Y → X` arises from this construction for some group
morphism `φ : fundamental_group X x0 →* Γ`.
-/
theorem covering_spaces_classification
  {X : Type*} [TopologicalSpace X] [PathConnectedSpace X] [LocallySimplyConnectedSpace X]
  (x0 : X) (Γ : Type*) [Group Γ] :
  -- existence/realization: any hom φ gives a Γ-covering with the stated properties
  (∀ (φ : (fundamental_group X x0) →* Γ) (X_phi : Type*) [TopologicalSpace X_phi] [MulAction Γ X_phi]
     (p_phi : X_phi → X),
     -- continuity of the action and that `p_phi` exhibits the quotient `X_phi / Γ ≃ X`
     (ContinuousMulAction Γ X_phi) → IsCoveringMap p_phi →
     (IsGammaCovering p_phi Γ ∧ (Γ ≃* fundamental_group X x0))) ∧
  -- classification: any connected Γ-covering arises from such a hom φ
  (∀ (Y : Type*) [TopologicalSpace Y] [MulAction Γ Y] (p : Y → X),
     IsCoveringMap p → ConnectedSpace Y →
     ∃ (φ : (fundamental_group X x0) →* Γ), Nonempty (Y ≃ₜ[Γ] ConstructedCover φ))
  := by sorry