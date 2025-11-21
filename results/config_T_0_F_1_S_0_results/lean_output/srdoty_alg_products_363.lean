import Mathlib

open List

theorem srdoty_alg_products_363 {G : Type*} [Group G] {n : Nat}
  (H : Fin n → Subgroup G)
  (h_normal : ∀ (i : Fin n) (g h' : G), h' ∈ (H i : Set G) → g * h' * g⁻¹ ∈ (H i : Set G))
  (h_unique : ∀ g : G, ∃! (a : ∀ i, H i), (List.ofFn fun i => (a i : G)).prod = g) :
  ∀ (i j : Fin n), i ≠ j → ((H i : Set G) ∩ (H j : Set G)) = ({1} : Set G) := by sorry
