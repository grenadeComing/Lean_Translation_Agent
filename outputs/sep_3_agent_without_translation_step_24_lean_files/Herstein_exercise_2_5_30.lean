import Mathlib

open MulEquiv

theorem Herstein_exercise_2_5_30 {G : Type _} [Group G] [Fintype G]
  {p m : ℕ} (hp : Nat.Prime p) (hm : ¬ p ∣ m) (hcardG : Fintype.card G = p * m)
  (H : Subgroup G) [Fintype H] (hcardH : Fintype.card H = p)
  (Hnormal : ∀ (g : G) {h : G}, h ∈ H → g * h * g⁻¹ ∈ H) :
  ∀ e : G ≃* G, Subgroup.map (e.toMonoidHom) H = H := by sorry
