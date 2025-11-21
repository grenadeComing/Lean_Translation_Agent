import Mathlib

/-
Statement (translated and slightly corrected):

Let X be a path-connected, locally simply connected topological space, let Γ be a group, and let
φ : FundamentalGroup X →* Γ be a group homomorphism. Given an action of Γ on a space Xφ one
obtains a Γ-covering pφ : Xφ → X. The deck transformation group of pφ is (canonically) isomorphic
to the image of φ, and in particular if φ is surjective then Γ is isomorphic to the deck group.

Moreover, any connected Γ-covering p : Y → X arises from this construction: there exists a
homomorphism φ : FundamentalGroup X →* Γ and a Γ-space Xφ with a Γ-cover pφ : Xφ → X such that
p is (equivariantly) homeomorphic to pφ over X.

Remarks: the original informal text claimed Γ ≃ FundamentalGroup X; that is only true under extra
hypotheses (e.g. φ an isomorphism). The version below records the more standard correct
formulation using the image of φ and the monodromy correspondence.
-/

-- We use abstract names for standard objects (FundamentalGroup, IsPathConnected, etc.)
-- so the statement is readable and faithful; the proof is omitted.

theorem benmckay_top_covering_spaces_856_construction
  {X Xφ : Type*} {Γ : Type*}
  [TopologicalSpace X] [TopologicalSpace Xφ] [Group Γ]
  (h_path_connected : IsPathConnected X)
  (h_locally_simply_connected : IsLocallySimplyConnected X)
  (φ : FundamentalGroup X →* Γ)
  (action : MulAction Γ Xφ)
  (pφ : Xφ → X) :
  -- pφ is a Γ-covering space (with the given Γ-action), and the deck group is isomorphic to
  -- the image of φ. If φ is surjective then the deck group is isomorphic to Γ.
  IsGammaCovering pφ Γ action ∧ (DeckGroup pφ ≃* (Subgroup.range φ)) := by sorry

theorem benmckay_top_covering_spaces_856_classification
  {X Y : Type*} {Γ : Type*}
  [TopologicalSpace X] [TopologicalSpace Y] [Group Γ]
  (h_path_connected : IsPathConnected X)
  (h_locally_simply_connected : IsLocallySimplyConnected X)
  (p : Y → X)
  (action : MulAction Γ Y)
  (hp : IsGammaCovering p Γ action)
  (hY_connected : IsConnected Y) :
  -- Any connected Γ-covering p : Y → X arises from a group hom φ : FundamentalGroup X →* Γ via
  -- the standard monodromy construction: there exist φ and a Γ-space Xφ with Γ-cover pφ
  -- such that p is (equivariantly) homeomorphic to pφ over X.
  ∃ (φ : FundamentalGroup X →* Γ) (Xφ : Type*) (pφ : Xφ → X) (act : MulAction Γ Xφ),
    IsGammaCovering pφ Γ act ∧ HomeomorphismOver p pφ := by sorry