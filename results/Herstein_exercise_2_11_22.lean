import Mathlib

/-- Let G be a finite group of order p^n (p prime, n ≥ 1). Any subgroup H of order p^(n-1) is normal. -/
theorem Herstein_exercise_2_11_22 {G : Type*} [Group G] [Fintype G] {p n : ℕ}
  (hp : Nat.Prime p) (hn : 1 ≤ n) (hG : Fintype.card G = p ^ n) {H : Subgroup G} [Fintype H]
  (hH : Fintype.card H = p ^ (n - 1)) : H.Normal := by sorry
