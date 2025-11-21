import Mathlib

theorem srdoty_alg_present_315 {G : Type _} [Group G] (a b : G)
  (ha : a ^ 5 = (1 : G)) (hb : b ^ 2 = (1 : G)) (hab : b * a = a ^ 2 * b)
  (hgen : Subgroup.closure ({a, b} : Set G) = (⊤ : Subgroup G)) :
  Nonempty (G ≃* Multiplicative (ZMod 2)) := by sorry
