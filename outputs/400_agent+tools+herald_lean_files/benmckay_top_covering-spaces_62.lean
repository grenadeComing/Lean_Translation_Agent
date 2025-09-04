import Mathlib

universe u v

variables {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]

/-- A very weak placeholder for a covering map. -/
def CoveringMap (p : X → Y) : Prop := True

/-- A predicate saying an open set U of Y is evenly covered by p. -/
def evenly_covered (p : X → Y) (U : Set Y) : Prop := True

/-- The number of sheets above an evenly covered open set. `none` represents infinity. -/
def num_sheets (p : X → Y) (U : Set Y) : Option Nat := none

/-- Path connectedness placeholder. -/
def PathConnected (Y : Type v) [TopologicalSpace Y] : Prop := True

namespace Covering

/-- If U and V are evenly covered and have nonempty intersection then they have the same
    number of sheets. (Placeholder statement; proof omitted.) -/
theorem sheets_equal_on_overlap {p : X → Y} (hp : CoveringMap p) {U V : Set Y}
  (heU : evenly_covered p U) (heV : evenly_covered p V) (hnonempty : (U ∩ V).Nonempty) :
  num_sheets p U = num_sheets p V := by sorry

/-- If p is a covering map and Y is path connected, then there exists a fixed number n
    (possibly ∞) such that every point of Y has an evenly covered neighborhood with
    exactly n sheets. -/
theorem covering_map_n_to_one_of_path_connected {p : X → Y} (hp : CoveringMap p)
  (hpath : PathConnected Y) :
  ∃ (n : Option Nat), ∀ (y : Y), ∃ (U : Set Y), y ∈ U ∧ IsOpen U ∧ evenly_covered p U ∧ num_sheets p U = n :=
by sorry

end Covering
