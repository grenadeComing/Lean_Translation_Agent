import Mathlib

/-- If G is an abelian group and G has elements a and b of orders m and n respectively,
    with m and n coprime, then G has an element of order m * n. -/
theorem herstein_exercise_2_6_15 {G : Type _} [CommGroup G] {m n : ℕ} {a b : G}
  (ha_pow : a ^ m = 1) (ha_min : ∀ k, 0 < k → k < m → a ^ k ≠ 1)
  (hb_pow : b ^ n = 1) (hb_min : ∀ k, 0 < k → k < n → b ^ k ≠ 1)
  (gcd1 : Nat.gcd m n = 1) :
  ∃ x : G, x ^ (m * n) = 1 ∧ (∀ k, 0 < k → k < m * n → x ^ k ≠ 1) := by sorry
