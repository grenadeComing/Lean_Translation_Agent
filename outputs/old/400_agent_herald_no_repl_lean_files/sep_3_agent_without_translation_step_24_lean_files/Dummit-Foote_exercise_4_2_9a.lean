import Mathlib

open Set

-- If p is a prime and G is a finite p-group of order p^α, then every subgroup of index p is normal.
theorem Dummit_Foote_exercise_4_2_9a {G : Type*} [Group G] {p α : ℕ} (hp : Nat.Prime p)
  (hα : 0 < α) [Fintype G] (hcard : Fintype.card G = p ^ α) (H : Subgroup G) (hindex : H.index = p) :
  ∀ g : G, (fun x => g * x * g⁻¹) '' (H : Set G) = (H : Set G) := by sorry
