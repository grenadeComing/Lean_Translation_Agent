import Mathlib

universe u

variable (X Xφ Y : Type u)
variable [TopologicalSpace X] [TopologicalSpace Xφ] [TopologicalSpace Y]

variable (h_path_conn : Prop) (h_loc_simp_conn : Prop)

variable (Γ : Type u) [Group Γ]
variable (π1X : Type u) [Group π1X]
variable (φ : π1X →* Γ)

variable [MulAction Γ Xφ]

variable (GammaCovering : ∀ (G E B : Type u), Prop)
variable (IsConnectedSpace : Type u → Prop)

/-- Formal statement (no proof):
If X is path connected and locally simply connected, Γ is a group and φ : π1(X) →* Γ,
and Γ acts on Xφ and pφ : Xφ → X is the projection, then pφ is a Γ-covering and Γ ≃* π1X.
Moreover any connected Γ-covering Y → X arises from such a φ'. -/

theorem benmckay_top_covering_spaces_856
  (h1 : h_path_conn) (h2 : h_loc_simp_conn)
  (pφ : Xφ → X) (h_pφ : GammaCovering Γ Xφ X) :
  (GammaCovering Γ Xφ X) ∧ (∃ e : Γ ≃* π1X, True) ∧
    (∀ (pY : Y → X), IsConnectedSpace Y → GammaCovering Γ Y X → ∃ (φ' : π1X →* Γ), True) := by
  sorry
