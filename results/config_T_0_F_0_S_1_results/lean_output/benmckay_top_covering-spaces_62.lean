import Mathlib

/-
Statement translations:

1. For a covering map p : X → Y, the cardinality (possibly infinite) of the fiber
   above a point is constant along any path in Y: if y₀ and y₁ are joined by a path, then
   the fibers p⁻¹{y₀} and p⁻¹{y₁} are in bijection.

2. In particular, if Y is path connected, there is a single cardinal n (possibly ∞)
   such that every fiber has cardinality n; we say the covering is n-to-1.

The following lemmas state these facts (without proof).
-/

open TopologicalSpace

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

-- We assume a predicate `IsCoveringMap` for covering maps.  (Mathlib4 uses a name
-- along these lines; adapt if the actual name differs.)
variable (p : X → Y) (hp : IsCoveringMap p)

/-- If y₀ and y₁ are joined by a path, the fibers of a covering map over those
points are in bijection. -/
lemma covering_map.fiber_equiv_along_path {y₀ y₁ : Y} (γ : Path y₀ y₁) :
  ({ x : X // p x = y₀ } ≃ { x : X // p x = y₁ }) := by sorry

/-- If Y is path connected, then all fibers of a covering map have the same
cardinality (possibly infinite). We call such a covering `n`-to-1.
-/
lemma covering_map.fiber_cardinal_constant_of_path_connected [PathConnectedSpace Y] :
  ∃ (n : Cardinal), ∀ y : Y, Cardinal.mk ({ x : X // p x = y }) = n := by sorry

/-- Definition: a covering map is `n`-to-1 if every fiber has cardinality `n`. -/
def covering_map.is_n_to_one (n : Cardinal) : Prop :=
  ∀ y : Y, Cardinal.mk ({ x : X // p x = y }) = n

/-- If Y is path connected, there exists an `n` with which the covering is `n`-to-1. -/
lemma covering_map.exists_n_to_one_of_path_connected [PathConnectedSpace Y] :
  ∃ n, covering_map.is_n_to_one p hp n := by sorry
