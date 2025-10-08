import Mathlib

structure CoveringSpace (X Y : Type) where
  to_fun : X -> Y

variable {X Y : Type} (p : CoveringSpace X Y)

def evenly_covered (p : CoveringSpace X Y) (U : Set Y) : Prop := True

noncomputable def sheet_card (p : CoveringSpace X Y) (y : Y) : Nat := 0

theorem covering_sheets_constant_along_path {X Y : Type} (p : CoveringSpace X Y) {U : Set Y} (hU : evenly_covered p U) (γ : Unit -> Y) (t : Unit) :
  sheet_card p (γ t) = sheet_card p (γ Unit.unit) := by
  sorry

theorem covering_sheets_constant_on_path_connected {X Y : Type} (p : CoveringSpace X Y) (path_connected : Prop) :
  ∀ y y' : Y, sheet_card p y = sheet_card p y' := by
  intro y y'
  sorry
