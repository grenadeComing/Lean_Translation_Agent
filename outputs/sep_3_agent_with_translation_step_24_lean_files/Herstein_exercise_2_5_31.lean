import Mathlib

/-- Suppose that G is an abelian group of order p^n * m where p ∤ m is a prime.
If H is a subgroup of G of order p^n, then H is a characteristic subgroup of G,
meaning H is fixed by every automorphism of G. -/
theorem herstein_exercise_2_5_31 {G : Type u} [CommGroup G] [Fintype G] {p n m : ℕ} (H : Subgroup G)
  [Fintype H] (hp : Nat.Prime p) (hm : ¬ p ∣ m)
  (hG : Fintype.card G = p ^ n * m) (hH : Fintype.card H = p ^ n) :
  ∀ φ : G ≃* G, (H.map φ.toMonoidHom) = H := by
  sorry
