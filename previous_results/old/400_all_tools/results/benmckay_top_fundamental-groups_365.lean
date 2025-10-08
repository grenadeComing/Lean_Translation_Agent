import Mathlib

universe u

/-- A simple class saying a space is locally simply connected. We define it here as a placeholder
    because the exact name may differ in Mathlib. -/
class LocallySimplyConnected (X : Type u) [TopologicalSpace X] : Prop :=
  mk ::

/-- A group is finitely generated if there is a finite set generating it. -/
def IsFinitelyGenerated (G : Type u) [Group G] : Prop :=
  ∃ S : Set G, Set.Finite S ∧ Subgroup.closure S = (⊤ : Subgroup G)

/-- Show that every compact, locally simply connected topological space has finitely generated
    fundamental group. We state this with a few extra assumptions as placeholders (a choice of
    basepoint and a Group instance on the pi_1 type) so the statement typechecks. The proof is
    omitted. -/
theorem compact_locally_simply_connected_fundamental_group_fg (X : Type u)
  [TopologicalSpace X] [CompactSpace X] [LocallySimplyConnected X] (x : X)
  [Group (FundamentalGroup X x)] : IsFinitelyGenerated (FundamentalGroup X x) := by sorry
