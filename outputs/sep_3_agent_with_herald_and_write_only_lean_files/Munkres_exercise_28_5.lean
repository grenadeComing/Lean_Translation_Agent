import Mathlib

open Set

variable (X : Type*) [TopologicalSpace X]

/-- A space is countably compact if every countable open cover has a finite subcover. -/
def CountablyCompactSpace : Prop :=
  ∀ (ι : Type*) (U : ι → Set X),
    Countable ι → (∀ i, IsOpen (U i)) → (⋃ i, U i) = univ → ∃ t : Finset ι, (⋃ i ∈ t, U i) = univ

/-- X is countably compact iff every nested sequence of nonempty closed sets has nonempty intersection. -/
theorem countably_compact_iff_nested_closed :
  CountablyCompactSpace X ↔
    (∀ (C : ℕ → Set X),
      (∀ n, IsClosed (C n)) →
      (∀ n, C (n+1) ⊆ C n) →
      (∀ n, C n ≠ ∅) →
      (⋂ n, C n) ≠ ∅) := by sorry
