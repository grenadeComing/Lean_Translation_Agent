import Mathlib

/-!
Exercise 3.4.4 (Dummit--Foote): Use Cauchy's Theorem and induction to show that a
finite abelian group has a subgroup of order n for each positive divisor n of its order.
-/

open Classical

theorem exists_subgroup_of_card_dvd {G : Type*} [CommGroup G] [Fintype G] (n : ℕ)
  (h : n ∣ Fintype.card G) : ∃ H : Subgroup G, Fintype.card H = n := by sorry
