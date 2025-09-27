import Mathlib

def herstein_exercise_2_8_12 {G H : Type _} [Group G] [Fintype G] [Group H] [Fintype H]
  (hG : Fintype.card G = 21) (hH : Fintype.card H = 21)
  (nG : ¬ (∀ x y : G, x * y = y * x)) (nH : ¬ (∀ x y : H, x * y = y * x)) : MulEquiv G H := by sorry
