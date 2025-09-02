import Mathlib


/-- Let A be a normal subgroup of a group G, and suppose that b \in G is an element of prime order p, and that b \not\in A. Show that A \cap (b) = (e). Save it to: Herstein_exercise_2_10_1.lean -/
theorem Herstein_exercise_2_10_1 {G : Type*} [Group G] {A : Subgroup G} [A.Normal] {b : G} {p : ℕ}
    (hp : Nat.Prime p) (hb : orderOf b = p) (hb' : b ∉ A) :
    A ⊓ Subgroup.zpowers b = ⊥ := by sorry
