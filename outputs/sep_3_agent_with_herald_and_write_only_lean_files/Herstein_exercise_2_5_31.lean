import Mathlib

/-!
Suppose that G is an abelian group of order p^n * m where p ∤ m is a prime.
If H is a subgroup of G of order p^n, prove that H is a characteristic subgroup of G.

We state the result below. A full proof is omitted (use := by sorry) as requested.
-/

theorem Herstein_exercise_2_5_31 {G : Type*} [Group G] [Fintype G] {p n m : ℕ} [Fact (Nat.Prime p)]
  (H : Subgroup G)
  (hG : Fintype.card G = p ^ n * m)
  (hm : ¬ p ∣ m)
  (hH : Fintype.card H = p ^ n) :
  -- H is characteristic: it is fixed by every automorphism of G
  ∀ (φ : G ≃* G), φ.toEquiv '' (H : Set G) = (H : Set G) := by sorry
