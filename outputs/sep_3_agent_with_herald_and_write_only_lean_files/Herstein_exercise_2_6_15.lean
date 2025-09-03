import Mathlib

/-
Exercise: If G is an abelian group and if G has an element of order m and one of order n,
where m and n are relatively prime, prove that G has an element of order mn.
-/

theorem Herstein_exercise_2_6_15 {G : Type _} [CommGroup G] {m n : Nat}
  (hm : ∃ x : G, x ^ m = 1 ∧ ∀ k, k < m → x ^ k ≠ 1)
  (hn : ∃ y : G, y ^ n = 1 ∧ ∀ k, k < n → y ^ k ≠ 1)
  (hc : Nat.Coprime m n) : ∃ z : G, z ^ (m * n) = 1 ∧ ∀ k, k < m * n → z ^ k ≠ 1 := by sorry
