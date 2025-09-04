import Mathlib

universe u

variable {X : Type u} [TopologicalSpace X] [T2Space X] [PathConnectedSpace X]
variable (locally_simply_connected : Prop)

/-- Placeholder for the universal covering space of X. -/
axiom universal_cover : Type u
axiom universal_cover_topology : TopologicalSpace universal_cover

/-- Placeholder for the deck transformation group of the universal cover. -/
axiom deck_transformation_group : Type u

/-- Placeholder for the fundamental group of X (based at some chosen basepoint). -/
axiom fundamental_group : Type u

/-- Placeholder for the action of the fundamental group on the universal cover by path-lifting:
    given [γ] in π₁(X) and a point y in the universal cover, [γ] ⋅ y is the endpoint of the
    lift of γ starting at y. -/
axiom action_of_pi1_on_cover : fundamental_group → universal_cover → universal_cover

/-- The statement: for a Hausdorff, path connected and locally simply connected space X,
    the deck transformation group of the universal covering space is (canonically) the
    fundamental group π₁(X), acting by [x]·[y] = [x * y].

    We only state the result here as an equivalence of groups; the proof is omitted. -/
def deck_transformation_group_of_universal_cover :
  deck_transformation_group ≃ fundamental_group := by
  sorry
