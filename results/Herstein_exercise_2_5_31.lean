import Mathlib

/-- Suppose G is an abelian group of order p^n * m where p ∤ m is a prime.
If H is a subgroup of G of order p^n, then H is a characteristic subgroup of G. -/

theorem Herstein_exercise_2_5_31 (G : Type _) [CommGroup G] [Fintype G]
  (p m n : ℕ) (hp : Nat.Prime p) (hm : ¬ p ∣ m) (hG : Fintype.card G = p ^ n * m)
  (H : Subgroup G) [Fintype H] (hH : Fintype.card H = p ^ n) :
  ∀ φ : G ≃* G, φ '' (H : Set G) = (H : Set G) := by sorry
