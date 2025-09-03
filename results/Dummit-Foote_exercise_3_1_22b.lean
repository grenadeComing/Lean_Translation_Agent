import Mathlib

/-- Dummit and Foote, exercise 3.1.22(b).

Let G be a group and S be a nonempty collection of subgroups of G such that every member
of S is normal in G. Then the intersection (infimum) of the subgroups in S is closed under
conjugation by elements of G; in particular it is a normal subgroup. -/
theorem Dummit_Foote_exercise_3_1_22b {G : Type*} [Group G] {S : Set (Subgroup G)} (hne : S.Nonempty)
  (h : ∀ N ∈ S, ∀ g x : G, x ∈ (N : Set G) → g * x * g⁻¹ ∈ (N : Set G)) :
  ∀ (g x : G), x ∈ (Set.sInter (coe '' S)) → g * x * g⁻¹ ∈ (Set.sInter (coe '' S)) := by sorry
