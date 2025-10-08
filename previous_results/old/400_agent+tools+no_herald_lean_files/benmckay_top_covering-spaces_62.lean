import Mathlib

universe u v w

/-- The (set-theoretic) fibre over `y`. -/
def fiber {X : Type u} {Y : Type v} (f : X → Y) (y : Y) : Type u := { x : X // f x = y }

/-- Placeholder predicate for being a covering map. -/
def is_covering_map {X : Type u} {Y : Type v} (f : X → Y) : Prop := True

/-- For a covering map, the number of sheets (possibly infinite) above an evenly covered open set
    is constant along any path in `Y`. We express this by giving an equivalence between the
    fibres at the endpoints of a path. -/
def covering_sheets_const_along_path {X : Type u} {Y : Type v} {I : Type w}
  (f : X → Y) (hf : is_covering_map (f := f)) (γ : I → Y) (t0 t1 : I) :
  (fiber (f := f) (γ t0)) ≃ (fiber (f := f) (γ t1)) := by
  -- proof omitted
  sorry

/-- In particular, if `Y` is path connected then all fibres of a covering map are in bijection. -/
def covering_sheets_const_on_path_connected {X : Type u} {Y : Type v}
  (f : X → Y) (hf : is_covering_map (f := f))
  (hpath : ∀ y0 y1 : Y, ∃ (I' : Type w) (γ' : I' → Y) (t0 t1 : I'), γ' t0 = y0 ∧ γ' t1 = y1)
  (y0 y1 : Y) : (fiber (f := f) y0) ≃ (fiber (f := f) y1) := by
  -- proof omitted
  sorry
