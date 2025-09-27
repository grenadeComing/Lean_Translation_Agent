import Mathlib


/-- Let A be a normal subgroup of a group G, and suppose that b ∈ G is an element of prime order p, and that b ∉ A. Show that A ∩ (b) = (e). -/
theorem Herstein_exercise_2_10_1 {G : Type*} [Group G] (A : Subgroup G) [A.Normal] {b : G} (p : ℕ) (hp : Nat.Prime p) (hb : b ^ p = 1) (hb' : ∀ m : ℕ, 0 < m → m < p → b ^ m ≠ 1) (hb'' : b ∉ A) : A ⊓ Subgroup.closure ({b} : Set G) = ⊥ := by sorry
