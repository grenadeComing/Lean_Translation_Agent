import Mathlib

/-
Let H ≤ K ≤ G. Prove that |G : H| = |G : K| * |K : H| (do not assume G is finite).
We state this in terms of cardinalities of quotient types: Cardinal.mk (G ⧸ H) etc.
-/

theorem index_mul {G : Type*} [Group G] {H K : Subgroup G} (hHK : H ≤ K) :
  Cardinal.mk (G ⧸ H) = Cardinal.mk (G ⧸ K) * Cardinal.mk (K ⧸ H) := by
  sorry
