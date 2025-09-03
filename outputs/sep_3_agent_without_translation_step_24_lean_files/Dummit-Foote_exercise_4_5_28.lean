import Mathlib

/--
Let G be a group of order 105. Prove that if a Sylow 3-subgroup of G is normal then G is abelian.
This file contains the statement only; proof is omitted.
-/

theorem Dummit_Foote_exercise_4_5_28 (G : Type _) [Group G] [Fintype G]
  (hG : Fintype.card G = 105)
  (P : Subgroup G) [Fintype P] (hP_card : Fintype.card P = 3)
  (hP_normal : ∀ g : G, ∀ p : P, g * (p : G) * g⁻¹ ∈ P) :
  ∀ x y : G, x * y = y * x := by sorry
