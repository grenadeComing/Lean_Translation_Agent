import Mathlib

/-!
Herstein exercise: Any subgroup of order p^{n-1} in a group G of order p^n is normal in G.
This file only states the theorem; the proof is omitted (:= by sorry).
-/

variable {G : Type*} [Group G] [Fintype G]

variable {p n : ℕ} (hp : Nat.Prime p) (hG : Fintype.card G = p ^ n)

variable (H : Subgroup G) [Fintype H] (hH : Fintype.card H = p ^ (n - 1))

theorem herstein_exercise_2_11_22 :
  ∀ (g : G) {h : G}, h ∈ H → g * h * g⁻¹ ∈ H := by sorry
