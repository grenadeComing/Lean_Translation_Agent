import Mathlib

open Set

-- Exercise: If X is a countable product of spaces having countable dense subsets,
-- then X has a countable dense subset.

variable {α : ℕ → Type*} [∀ i, TopologicalSpace (α i)]

theorem countable_product_of_countable_dense_has_countable_dense
  (D : ∀ i, Set (α i))
  (hcount : ∀ i, (D i).Countable)
  (hdense : ∀ i, Dense (D i)) :
  ∃ S : Set (∀ i, α i), S.Countable ∧ Dense S := by sorry
