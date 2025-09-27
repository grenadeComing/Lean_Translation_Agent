import Mathlib

variable {X : Type*} [TopologicalSpace X]

/-- Predicate for open sets in the one-point compactification `WithTop X`. -/
def one_point_open (U : Set (WithTop X)) : Prop :=
  (U ⊆ Set.range (WithTop.some : X → WithTop X) ∧ IsOpen (WithTop.some ⁻¹' U)) ∨
  ( (Set.range (WithTop.some : X → WithTop X))ᶜ ⊆ U ∧ ∃ C : Set X, IsCompact C ∧
    U = (Set.range (WithTop.some : X → WithTop X))ᶜ ∪ (Set.range (WithTop.some : X → WithTop X) \ (WithTop.some '' C)) )

/-- The one-point compactification topology on `WithTop X` determined by `one_point_open`.
    (Proof that this indeed gives a topology is omitted.) -/
def one_point_topology : TopologicalSpace (WithTop X) := by sorry
