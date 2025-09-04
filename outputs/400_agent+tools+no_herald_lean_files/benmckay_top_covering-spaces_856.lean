import Mathlib

universe u v

section covering

variable {X : Type u} [TopologicalSpace X] (x0 : X)
variable (Γ : Type v) [Group Γ]
variable (φ : FundamentalGroup X x0 →* Γ)
variable (Xφ : Type*) [TopologicalSpace Xφ] (pφ : Xφ → X)
variable [MulAction Γ Xφ]
variable (path_conn : PathConnectedSpace X) (locally_simply_connected : Prop)

/-- From a group morphism φ : π_1(X,x0) →* Γ one can construct a Γ-space
Xφ and a continuous map pφ : Xφ → X which is a Γ-covering. (Statement only.) -/
theorem covering_space_from_group_morphism :
  ∃ (Y : Type*) (htop : TopologicalSpace Y) (p : Y → X) (act : MulAction Γ Y),
    Continuous p := by
  sorry

/-- Classification: any connected Γ-covering p : Y → X arises from some
group morphism ψ : π_1(X,x0) →* Γ. (Statement only.) -/
theorem classification_of_connected_Gamma_coverings
  {Y : Type*} [TopologicalSpace Y] (p : Y → X) [MulAction Γ Y]
  (hcont : Continuous p) (hconnY : ConnectedSpace Y) :
  ∃ (ψ : FundamentalGroup X x0 →* Γ), True := by
  sorry

end covering
