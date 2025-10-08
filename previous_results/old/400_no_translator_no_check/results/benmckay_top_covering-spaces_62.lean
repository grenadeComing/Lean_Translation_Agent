import Mathlib

/-!
We formalize a statement about covering maps: the cardinality of the fibre
(the number of sheets) is constant along any path in the base space, and
in particular is constant on a path-connected base.
The full proof is omitted (we end statements with `by sorry`).
-/

open Set Function

variable {X Y I : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace I]

/-- The fibre of `p` over `y`. -/
def fiber (p : X → Y) (y : Y) : Type* := Subtype fun x => p x = y

/-- A local trivialization property for a covering map expressed in terms of
cardinalities: for each point `y` there is an open neighbourhood `U` and a type
`S` such that for every `y' ∈ U` the cardinality of the fibre `p ⁻¹' {y'}` equals
`Cardinal.mk (S)`. This avoids using equivalences and universe issues.
-/
def is_covering_local_trivial (p : X → Y) : Prop :=
  ∀ y : Y,
    ∃ (U : Set Y) (hU : IsOpen U) (hy : y ∈ U) (S : Type*),
      ∀ y' ∈ U, Cardinal.mk (fiber p y') = Cardinal.mk (S)

/-- If `p` has local trivializations as in `is_covering_local_trivial`, then along any continuous
map `γ : I → Y` with `I` connected, the cardinality of the fibre is constant along `γ`.
-/
theorem covering_map_cardinal_const_along_path {p : X → Y} (h : is_covering_local_trivial p)
  {γ : I → Y} (hγ : Continuous γ) [ConnectedSpace I] (t0 : I) :
  ∀ t : I, Cardinal.mk (fiber p (γ t)) = Cardinal.mk (fiber p (γ t0)) := by
  -- proof omitted
  sorry

/-- In particular, if the base `Y` is path-connected, then the number of sheets
    (the cardinality of the fibre) is constant on `Y`. -/
theorem covering_map_cardinal_const_on_path_connected {p : X → Y} (h : is_covering_local_trivial p)
  [PathConnectedSpace Y] :
  ∀ y y' : Y, Cardinal.mk (fiber p y) = Cardinal.mk (fiber p y') := by
  -- proof omitted
  sorry
