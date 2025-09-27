import Mathlib

/-!
Exercise: Let p be a prime, n a natural number, G a finite group with card G = p^n,
and H a subgroup of G with card H = p^(n-1). Then H is a normal subgroup of G.
-/

variable {p n : ℕ} (hp : Prime p) {G : Type _} [Group G] [Fintype G] (H : Subgroup G)

theorem Herstein_exercise_2_11_22 (hG : Fintype.card G = p ^ n) (hH : Fintype.card H = p ^ (n - 1)) : H.normal := by sorry
