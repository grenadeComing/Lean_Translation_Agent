import Mathlib

/-!
Exercise: Show that X is countably compact iff every nested sequence
C1 ⊇ C2 ⊇ ⋯ of closed nonempty sets of X has nonempty intersection.
We state this as an equivalence. The proof is omitted (use `:= by sorry`).
-/

variable {X : Type _} [TopologicalSpace X]

/-- A space is countably compact if every countable open cover has a finite subcover. -/
def IsCountablyCompact (X : Type _) [TopologicalSpace X] : Prop :=
  ∀ (U : ℕ → Set X), (∀ n, IsOpen (U n)) → Set.iUnion U = (Set.univ : Set X) →
    ∃ (s : Finset ℕ), Set.iUnion (fun n => if n ∈ s then U n else (∅ : Set X)) = (Set.univ : Set X)

/-- The equivalence: countable compactness iff every nested sequence of nonempty closed
sets has nonempty intersection. -/
theorem is_countably_compact_iff_nested_closed_intersection :
  IsCountablyCompact X ↔
    (∀ (C : ℕ → Set X), (∀ n, IsClosed (C n)) → (∀ n, C (n + 1) ⊆ C n) → (∀ n, Set.Nonempty (C n)) → Set.Nonempty (Set.iInter fun n => C n)) :=
by sorry
