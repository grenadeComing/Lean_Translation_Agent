import Mathlib

/-!
Let A be a normal subgroup of a group G, and suppose that b ∈ G is an element of prime order p,
and that b ∉ A. Show that A ∩ <b> = {1}.
-/

theorem Herstein_exercise_2_10_1 {G : Type _} [Group G] (A : Subgroup G)
  (hA_normal : ∀ g x, x ∈ A → g * x * g⁻¹ ∈ A)
  {b : G} {p : ℕ} (hp : p.Prime) (hb : orderOf b = p) (hbnot : b ∉ A) :
  ∀ x, x ∈ A → x ∈ Subgroup.closure ({b} : Set G) → x = 1 := by sorry
