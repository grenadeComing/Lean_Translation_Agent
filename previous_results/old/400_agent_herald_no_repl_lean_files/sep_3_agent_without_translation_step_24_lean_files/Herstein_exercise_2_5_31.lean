import Mathlib

universe u
open Subgroup

def is_characteristic {G : Type u} [Group G] (H : Subgroup G) : Prop :=
  ∀ (f : G ≃* G), Subgroup.map (MulEquiv.toMonoidHom f) H = H

theorem Herstein_exercise_2_5_31 {G : Type u} [CommGroup G] [Fintype G]
  {p m n : ℕ} (hp : Nat.Prime p) (hm : ¬ (p ∣ m))
  (hcard : Fintype.card G = p ^ n * m)
  (H : Subgroup G) [Fintype H] (hH : Fintype.card H = p ^ n) : is_characteristic H := by sorry
