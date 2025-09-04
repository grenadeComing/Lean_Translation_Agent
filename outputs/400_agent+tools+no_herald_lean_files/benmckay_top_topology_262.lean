import Mathlib

/-!
Suppose X and Y are topological spaces and A ⊆ X is dense. Prove that the inclusion
C(Y, Z) → C(X × Y, Z) given by precomposition with Prod.snd is an isomorphism onto the
subspace of functions which are constant on each set `{x} × Y` for `x ∈ A` (and hence for
`x ∈ X`).

We only state the result as an `equiv` and leave the proof as `sorry`.
-/

open ContinuousMap

variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Precompose with the second projection to view a map on `Y` as a map on `X × Y`. -/
def incl_snd : ContinuousMap Y Z → ContinuousMap (X × Y) Z := fun g => g.comp (ContinuousMap.mk (Prod.snd : X × Y → Y) continuous_snd)

/-- If `A` is dense in `X`, then precomposition with `Prod.snd` induces an equivalence between
`ContinuousMap Y Z` and the subtype of `ContinuousMap (X × Y) Z` consisting of maps which are
constant on each `{x} × Y` for `x ∈ A` (and therefore for all `x ∈ X`). -/
def incl_snd_equiv_dense (A : Set X) (hA : Dense A) :
  (ContinuousMap Y Z) ≃ { f : ContinuousMap (X × Y) Z // ∀ x ∈ A, ∀ y1 y2 : Y, f (x, y1) = f (x, y2) } :=
by
  -- The map is `g ↦ g ∘ Prod.snd`. Its image is exactly the continuous maps constant on each
  -- `{x} × Y` for `x ∈ A`, and density of `A` upgrades constancy on `A` to constancy on `X`.
  -- We omit the detailed proof here.
  sorry
