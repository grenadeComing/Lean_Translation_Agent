import Mathlib

/-!
Herstein Exercise 2.5.30
Suppose |G| = p * m where p ∤ m and p is prime. If H is a normal subgroup of order p in G, then H is characteristic.
This file states the result in Lean4 / mathlib style. The proof is omitted (:= by sorry).
-/

open Subgroup

theorem Herstein_exercise_2_5_30 {G : Type*} [Group G] [Fintype G] {p m : ℕ}
  (hp : Nat.Prime p) (hm : ¬ (p ∣ m)) (hcard : Fintype.card G = p * m)
  (H : Subgroup G) (hH : Fintype.card H = p) (hnormal : H.normal) :
  -- H is invariant under every automorphism of G (i.e., characteristic)
  (∀ (φ : G ≃* G), (φ.toEquiv : G ≃ G) '' (H : Set G) = (H : Set G)) := by sorry
