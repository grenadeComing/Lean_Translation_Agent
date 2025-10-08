import Mathlib

variable {X : Type*} [MetricSpace X] [CompleteSpace X] [Nonempty X]

open Set

/-- Baire category theorem (Rudin exercise 3.22, existence form).
If X is a nonempty complete metric space and (G n) is a sequence of dense open sets,
then the intersection ⋂_{n=1}^∞ G_n is nonempty. -/
theorem baire_countable_intersection_dense_open_nonempty (G : ℕ → Set X)
  (hopen : ∀ n, IsOpen (G n)) (hdense : ∀ n, Dense (G n)) :
  ∃ x : X, ∀ n, x ∈ G n := by
  sorry
