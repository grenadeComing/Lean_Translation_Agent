import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- In the subspace topology on `A`, the closed sets are exactly the intersections
with closed sets of the ambient space `X`. -/
theorem isClosed_subspace_iff {A : Set X} {S : Set A} :
  IsClosed (S : Set A) ↔ ∃ C : Set X, IsClosed C ∧ (S : Set X) = A ∩ C := by sorry

/-- The closure of `S ⊆ A` taken in the subspace `A` equals the intersection of
`A` with the closure of `S` in the ambient space `X`. -/
theorem closure_subtype_eq {A : Set X} (S : Set A) :
  closure (S : Set A) = ((closure (S : Set X) ∩ A) : Set A) := by sorry
