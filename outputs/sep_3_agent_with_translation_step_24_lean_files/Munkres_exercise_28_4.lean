import Mathlib

theorem Munkres_exercise_28_4 {X : Type _} [TopologicalSpace X] [T1Space X] :
  (∀ (U : ℕ → Set X), (∀ n, IsOpen (U n)) → (⋃ n, U n) = (Set.univ : Set X) →
    ∃ S : Finset ℕ, (⋃ n ∈ (S : Set ℕ), U n) = Set.univ) ↔
  (∀ s : Set X, s.Infinite → ∃ x : X, ∀ U : Set X, IsOpen U → x ∈ U → ((s \ {x}) ∩ U).Nonempty) := by sorry
