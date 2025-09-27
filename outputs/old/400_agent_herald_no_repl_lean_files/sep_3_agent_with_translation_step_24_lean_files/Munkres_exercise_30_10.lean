import Mathlib

/-!
Show that if X is a countable product of spaces having countable dense subsets, then X has a countable dense subset.
We formalize: Let ι be a countable index type, and for each i : ι let X i be a topological space.
For each i let s i be a countable dense subset of X i. Then the product Π i, X i (with the product topology) has a countable dense subset.
-/

open Set

variable {ι : Type*} [Countable ι]
variable (X : ι → Type*) [∀ i, TopologicalSpace (X i)]
variable (s : ∀ i, Set (X i))

-- each s i is countable and dense in X i
variable (hs_countable : ∀ i, Countable (s i))
variable (hs_dense : ∀ i, Dense (s i))

/-- The product has a countable dense subset. -/
theorem product_countable_dense : Countable (Set.range (fun f : ∀ i, X i => fun i => f i)) := by sorry
