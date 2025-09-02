import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- x is a limit point of S if every open neighborhood of x meets S in a point other than x. -/
def IsLimitPoint (x : X) (S : Set X) : Prop :=
  ∀ U : Set X, IsOpen U → x ∈ U → ∃ y, y ∈ S ∧ y ≠ x ∧ y ∈ U

/-- Countable compactness: every countable open cover has a finite subcover. -/
def CountablyCompact (X : Type _) [TopologicalSpace X] : Prop :=
  ∀ (U : ℕ → Set X), (∀ n, IsOpen (U n)) → (⋃ n, U n) = (univ : Set X) → ∃ F : Finset ℕ, ∀ x, ∃ n ∈ F, x ∈ U n

/-- Limit point compactness: every infinite subset has a limit point. -/
def LimitPointCompact (X : Type _) [TopologicalSpace X] : Prop :=
  ∀ S : Set X, S.Infinite → ∃ x : X, IsLimitPoint x S

/-- For T1 spaces, countable compactness is equivalent to limit point compactness. -/
theorem T1_countably_eq_limitpoint (X : Type _) [TopologicalSpace X] [T1Space X] :
  CountablyCompact X ↔ LimitPointCompact X := by sorry
