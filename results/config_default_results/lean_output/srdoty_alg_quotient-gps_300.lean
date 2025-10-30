import Mathlib

universe u

variable {G : Type u} [Group G]

-- Show that if H is a subgroup of order n in a group G and H is the only subgroup of order n, then H is normal in G.
-- Translation into Lean4 (proof omitted).
theorem normal_of_unique_subgroup_order_extracted (H : Subgroup G) {n : ℕ}
  : Nat.card ↥H = n → (∀ (K : Subgroup G), Nat.card ↥K = n → K = H) → H.Normal := by
  sorry
