import Mathlib

universe u v

open Set

variable {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]

/-- An open set U of Y is evenly covered by p if p^{-1}(U) is a disjoint union of open
    subsets (the "sheets") each of which maps onto U. We record an indexing type `I` and a
    family `sheets : I → Set X` with the usual properties. -/
def is_evenly_covered (p : X → Y) (U : Set Y) : Prop :=
  ∃ (I : Type u) (sheets : I → Set X),
    (∀ i, IsOpen (sheets i)) ∧ (⋃ i : I, sheets i = p ⁻¹' U) ∧ (∀ i, p '' (sheets i) = U) ∧ (∀ (i j : I), i ≠ j → Disjoint (sheets i) (sheets j))

/-- A map `p` is a covering map if every point of `Y` has an evenly covered neighbourhood. -/
def is_covering_map (p : X → Y) : Prop := ∀ y : Y, ∃ U : Set Y, IsOpen U ∧ y ∈ U ∧ is_evenly_covered p U

/-- Main statement (no proof): for a covering map `p`, the number of sheets is locally
    constant and hence constant on path-connected components. In particular, if `Y` is
    connected then there is a single cardinal `n` so that every evenly covered neighbourhood
    has `n` sheets; we then say the covering is `n`-to-`1`.

    The theorem is stated in a form that avoids eliminating existentials from a `Prop`: we
    assert the existence of a cardinal `n` such that for every point `y : Y` there exist an
    evenly covered neighbourhood `U` together with an explicit indexing type `I` of sheets
    (and the usual data) whose cardinality equals `n`. -/
theorem covering_map_sheets_constant_on_connected {p : X → Y} (hcov : is_covering_map p) [ConnectedSpace Y] :
  ∃ n : Cardinal, ∀ y : Y,
    ∃ (U : Set Y) (I : Type u) (sheets : I → Set X),
      IsOpen U ∧ y ∈ U ∧ (∀ i, IsOpen (sheets i)) ∧ (⋃ i : I, sheets i = p ⁻¹' U) ∧ (∀ i, p '' (sheets i) = U) ∧ (∀ (i j : I), i ≠ j → Disjoint (sheets i) (sheets j)) ∧ Cardinal.mk I = n := by sorry
