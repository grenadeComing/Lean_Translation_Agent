import Mathlib

/-!
The morphism of fundamental groups f_* : π1(X) → π1(Y) induced by a covering map
f : X → Y on a Hausdorff space X is injective.

This file provides a Lean translation of that statement. We do not assume
Mathlib currently contains definitions for covering maps or the fundamental
group; instead we introduce placeholders for those concepts and state the
result using those placeholders. The proof is omitted ("by sorry").
-/

universe u

variable {X : Type u} {Y : Type u}
variable [TopologicalSpace X] [TopologicalSpace Y]

-- Placeholder predicate for "f is a covering map".
variable (IsCovering : (X → Y) → Prop)

-- Placeholder for a fundamental group construction assigning to each space a type.
variable (pi1 : Type u → Type u)

-- Placeholder for the induced map on fundamental groups associated to a map f.
variable (pi1_map : ∀ (f : X → Y), pi1 X → pi1 Y)

/-- If f : X → Y is a covering map and X is Hausdorff, then the induced map on
fundamental groups is injective. -/
theorem covering_map.induced_on_fundamental_group_injective
  (f : X → Y) (hcov : IsCovering f) [T2Space X] :
  Function.Injective (pi1_map f) := by sorry
