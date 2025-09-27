import Mathlib


/-- Prove that the products $a b$ and $b a$ are conjugate elements in a group. -/
theorem isConj_mul_comm {G : Type _} [Group G] (a b : G) : IsConj (a * b) (b * a) := by sorry
