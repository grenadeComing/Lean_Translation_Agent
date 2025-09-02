import Mathlib


/-- Let A be a normal subgroup of a group G, and suppose that b ∈ G is an element of prime order p, and that b ∉ A. Show that A ∩ (b) = (e). Save it to: Herstein_exercise_2_10_1.lean -/
theorem Herstein_exercise_2_10_1 {G : Type*} [Group G] {A : Subgroup G} (hA : A.Normal) {b : G}
    (hb : b ∉ A) (p : ℕ) (hp : Nat.Prime p) (hb' : orderOf b = p) :
    A ⊓ Subgroup.zpowers b = ⊥ := by sorry
