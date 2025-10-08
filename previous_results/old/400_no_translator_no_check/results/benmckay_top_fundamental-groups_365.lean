import Mathlib

universe u

/-- Main statement (formalized): For any choice of a fundamental_group construction
    and a predicate finitely_generated, if X is compact and locally simply connected
    then the fundamental group of X is finitely generated. The proof is omitted. -/
theorem benmckay.compact_locally_simply_connected_fundamental_group_finitely_generated
  {X : Type u}
  (fundamental_group : Type u → Type u)
  (finitely_generated : Type u → Prop)
  (locally_simply_connected : Type u → Prop)
  [TopologicalSpace X]
  [CompactSpace X]
  (hl : locally_simply_connected X) :
  finitely_generated (fundamental_group X) := by sorry
