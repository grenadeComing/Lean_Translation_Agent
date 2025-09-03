import Mathlib

open MulEquiv

/-- Any two nonabelian groups of order 21 are isomorphic. -/
def Herstein_exercise_2_8_12 {G H : Type _} [Group G] [Fintype G] [Group H] [Fintype H]
  (hG : Fintype.card G = 21) (hH : Fintype.card H = 21)
  (nG : ∃ a b : G, a * b ≠ b * a) (nH : ∃ c d : H, c * d ≠ d * c) :
  G ≃* H := by sorry
