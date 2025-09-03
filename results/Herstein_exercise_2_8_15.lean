import Mathlib

/-- Herstein, Ex. 2.8.15: If p > q are primes with q | (p - 1), then any two nonabelian
    groups of order p * q are isomorphic. -/
theorem Herstein_exercise_2_8_15 (p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q) (hpq : p > q)
  (hd : q ∣ p - 1) :
  ∀ (G H : Type) [Group G] [Fintype G] [Group H] [Fintype H],
    Fintype.card G = p * q → Fintype.card H = p * q →
    (∃ x y : G, x * y ≠ y * x) → (∃ x y : H, x * y ≠ y * x) →
    Nonempty (G ≃* H) := by sorry
