import Mathlib
open Set

/-- Let $X$ be a topological space; let $A$ be a subset of $X$. Suppose that for each x ∈ A there is an open set $U$ containing $x$ such that $U ⊆ A$. Show that $A$ is open in $X$. -/
theorem isOpen_of_open_subset_extracted {X : Type*} [TopologicalSpace X] {A : Set X} : (∀ x ∈ A, ∃ U ∈ 𝓝 x, U ⊆ A) → IsOpen A := by sorry
