import Mathlib


/-- Prove that a group of order p^2, p a prime, has a normal subgroup of order p. Save it to: Herstein_exercise_2_5_44.lean -/
theorem Herstein_exercise_2_5_44 (G : Type*) [Group G] [Fintype G] (p : ℕ) (hp : Nat.Prime p) (hG : Fintype.card G = p^2) : ∃ N : Subgroup G, N.Normal ∧ Fintype.card ↥N = p := by sorry
