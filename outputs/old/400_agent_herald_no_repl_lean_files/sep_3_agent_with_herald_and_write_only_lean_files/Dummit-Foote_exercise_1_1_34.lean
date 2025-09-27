import Mathlib

/- If x has infinite order (i.e. the only integer power giving 1 is 0),
   then the map n ↦ x^n is injective, so x^m = x^n implies m = n. -/
theorem zpow_injective_of_infinite_order {G : Type*} [Group G] {x : G}
  (h : ∀ n : ℤ, x ^ n = 1 → n = 0) :
  ∀ m n : ℤ, x ^ m = x ^ n → m = n := by sorry
