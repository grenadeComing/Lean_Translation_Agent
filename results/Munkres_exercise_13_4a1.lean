import Mathlib

variable {X : Type _}

/-- A set is open in the intersection topology iff it is open in every topology in `T`. -/
def inter_isopen (T : Set (TopologicalSpace X)) (s : Set X) : Prop :=
  ∀ τ ∈ T, @IsOpen X τ s

/-- Given a family `T` of topologies on `X`, the intersection of `T` is a topology on `X`.
    We define the candidate `IsOpen'` below; the proof that it satisfies the topology
    axioms is omitted (use `sorry`). -/
def intersection_of_topologies (T : Set (TopologicalSpace X)) : TopologicalSpace X := by
  -- The intersection topology: opens are those sets open in every `τ ∈ T`.
  let IsOpen' : Set X → Prop := fun s => ∀ τ ∈ T, @IsOpen X τ s
  -- One can build the topology using `TopologicalSpace.mk IsOpen' ...`.
  -- Proof of the three topology axioms for `IsOpen'` is omitted.
  sorry
