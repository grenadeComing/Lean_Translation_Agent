import Mathlib

open Set

variable (X : Type _) [TopologicalSpace X]

/-- A space X is countably compact if every countable open cover (indexed by ℕ)
    has a finite subcover. -/
def CountablyCompactSpace : Prop :=
  ∀ (U : ℕ → Set X), (∀ n, IsOpen (U n)) → (⋃ n, U n) = (univ : Set X) → ∃ s : Finset ℕ, (⋃ n ∈ s, U n) = univ

/-- Exercise: X is countably compact iff every nested sequence of closed nonempty sets
    C1 ⊇ C2 ⊇ ⋯ has nonempty intersection. -/
theorem countably_compact_iff_nested_closed :
  CountablyCompactSpace X ↔
    ∀ C : ℕ → Set X,
      (∀ n, IsClosed (C n)) → (∀ n, C (n+1) ⊆ C n) → (∀ n, C n ≠ ∅) → (⋂ n, C n) ≠ ∅ :=
by sorry
