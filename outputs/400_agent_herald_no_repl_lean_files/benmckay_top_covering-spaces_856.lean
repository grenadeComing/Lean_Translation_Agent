import Mathlib

/--
Take a path connected and locally simply connected space `X`, a group `Γ`, and a group morphism
`φ : π_1(X) → Γ`. Suppose that `Γ` acts on a space `X_φ`. Then `p_φ : X_φ → X` is a `Γ`-covering
space with `Γ ≅ π_1(X)`, and any connected `Γ`-covering space `Y → X` comes from this construction
with some group morphism `φ : π_1(X) → Γ`.

The file records this statement as a pair of lemmas (declaration only; proofs omitted).
- `monodromy_construction` is the forward construction: from φ and a Γ-action on X_φ one gets
  a Γ-covering p_φ and an isomorphism Γ ≃ π_1(X).
- `monodromy_classification` is the converse: every connected Γ-covering arises from such φ.

Remark: This file only records the informal translation as Lean declarations; the proofs are omitted
and replaced by `by sorry`.
-/

variable {X : Type*} [TopologicalSpace X]
variable {Γ : Type*} [Group Γ]

/-- Forward direction (construction from monodromy homomorphism).
    Informal: given X path-connected and locally simply connected, a group hom φ : π₁(X) → Γ and a
    Γ-space X_φ, the projection p_φ : X_φ → X is a Γ-covering and Γ ≃ π₁(X). -/
theorem monodromy_construction
  (h_path : IsPathConnected X)
  (h_loc_simply : IsLocallySimplyConnected X)
  (φ : FundamentalGroup X →* Γ)
  (Xφ : Type*) [TopologicalSpace Xφ] [MulAction Γ Xφ] :
  ∃ (pφ : Xφ → X),
    (IsCovering pφ) ∧
    (MulAction Γ Xφ) ∧
    (Γ ≃* FundamentalGroup X) := by sorry

/-- Converse/classification: every connected Γ-covering of X (with X path connected and
    locally simply connected) arises from some monodromy homomorphism `φ : π₁(X) → Γ`.
    Again: declaration only; proof omitted. -/
theorem monodromy_classification
  (h_path : IsPathConnected X)
  (h_loc_simply : IsLocallySimplyConnected X)
  {Y : Type*} [TopologicalSpace Y]
  (p : Y → X)
  (hp : IsCovering p)
  (hYconn : IsConnected Y)
  (hΓact : MulAction Γ Y) :
  ∃ (φ : FundamentalGroup X →* Γ) (Xφ : Type*) [TopologicalSpace Xφ] [MulAction Γ Xφ] (pφ : Xφ → X),
    IsCovering pφ ∧
    -- there is an equivariant homeomorphism over X identifying Y with the constructed X_φ
    (Nonempty (Y ≃ₜ[ X ] Xφ)) := by sorry
