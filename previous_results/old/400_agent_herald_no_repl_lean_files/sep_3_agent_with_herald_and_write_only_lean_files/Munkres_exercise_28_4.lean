import Mathlib

open Set

/-- A topological space X is countably compact if every countable open cover has a finite subcover. -/
def countably_compact (X : Type*) [TopologicalSpace X] : Prop :=
  ∀ (U : ℕ → Set X), (∀ n, IsOpen (U n)) → (⋃ n, U n = univ) → ∃ (s : Finset ℕ), (⋃ i ∈ s, U i) = univ

/-- x is a limit point of s if every neighborhood of x contains a point of s different from x. -/
def is_limit_point {X : Type*} [TopologicalSpace X] (x : X) (s : Set X) : Prop :=
  ∀ (U : Set X), IsOpen U → x ∈ U → ∃ y, y ∈ s ∧ y ≠ x ∧ y ∈ U

/-- A space is limit point compact if every infinite subset has a limit point. -/
def limit_point_compact (X : Type*) [TopologicalSpace X] : Prop :=
  ∀ s : Set X, s.Infinite → ∃ x : X, is_limit_point x s

/-- In a T1 space, countable compactness is equivalent to limit point compactness. -/
theorem countably_compact_iff_limit_point_compact_of_T1 {X : Type*} [TopologicalSpace X] [T1Space X] :
  countably_compact X ↔ limit_point_compact X := by
  -- proof omitted
  sorry
