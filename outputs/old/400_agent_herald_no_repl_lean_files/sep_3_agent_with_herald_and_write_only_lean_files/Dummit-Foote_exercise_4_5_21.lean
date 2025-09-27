import Mathlib

/-
Exercise (Dummit & Foote 4.5.21, translated):
If |G| = 2907 then G is not simple.

Sketch of the intended proof (not formalized here): 2907 = 3^2 * 17 * 19.
By Sylow theory, the number n_17 of Sylow 17-subgroups divides 9*19 = 171 and is congruent to 1 mod 17, hence n_17 ∈ {1,171}.
Similarly n_19 ∈ {1,153}.
If both were greater than 1 one gets at least 171*16 + 153*18 = 5490 nonidentity elements, a contradiction.
Thus at least one of the Sylow 17- or 19-subgroups is unique and hence normal, so G is not simple.
-/

theorem Dummit_Foote_exercise_4_5_21 {G : Type*} [Group G] [Fintype G]
  (h : Fintype.card G = 2907) :
  ∃ N : Subgroup G, (∀ g x, x ∈ N → g * x * g⁻¹ ∈ N) ∧ N ≠ (⊥ : Subgroup G) ∧ N ≠ (⊤ : Subgroup G) :=
by
  sorry
