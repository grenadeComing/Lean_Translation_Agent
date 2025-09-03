import Mathlib

/-!
Exercise (Artin 6.4.3): Prove that no group of order p^2 * q, where p and q are prime, is simple.
We state the result and leave the proof as `sorry`.
-/

theorem artin_exercise_6_4_3 {G : Type _} [Group G] [Fintype G]
  (p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q) (hcard : Fintype.card G = p ^ 2 * q) :
  ∃ H : Subgroup G, H ≠ ⊥ ∧ H ≠ ⊤ ∧ ∀ (g x : G), x ∈ H → g * x * g⁻¹ ∈ H := by sorry
