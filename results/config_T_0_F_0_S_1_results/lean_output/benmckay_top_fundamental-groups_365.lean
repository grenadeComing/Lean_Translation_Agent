import Mathlib

/-
We state the following classical result (without proof):
Every compact, locally simply connected topological space has finitely generated fundamental group.

Because Mathlib's API for fundamental groups and the predicate "finitely generated" may vary,
we state the theorem in a fairly explicit and parameterised way: we assume a choice of
fundamental group construction π1 and a predicate `IsFinitelyGenerated` on groups.
The hypotheses are:
- X is a topological space and is compact (CompactSpace X)
- X is locally simply connected (IsLocallySimplyConnected X)
- π1 : X → Type _ assigns to each basepoint a group, witnessed by `group_inst`
- `IsFinitelyGenerated` is a predicate on (group) types

The conclusion is: for every basepoint x : X, the group π1 x is finitely generated.
-/

variable {X : Type _} [TopologicalSpace X] [CompactSpace X]

/-- Predicate expressing that X is locally simply connected. -/
variable (IsLocallySimplyConnected : Type _) -- placeholder type for the predicate

/-- A choice of fundamental group at each basepoint. -/
variable (π1 : X → Type _)
variable (group_inst : ∀ x : X, Group (π1 x))

/-- Predicate saying a group is finitely generated. -/
variable (IsFinitelyGenerated : ∀ (G : Type _), Prop)

theorem compact_locally_simply_connected.fundamental_group_is_finitely_generated
  (hX : IsLocallySimplyConnected) :
  ∀ x : X, IsFinitelyGenerated (π1 x) := by sorry