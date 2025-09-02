import Mathlib

/-- If p > q are primes and q divides p - 1, then any two nonabelian groups of order p * q are isomorphic. -/
theorem herstein_exercise_2_8_15 {p q : ℕ} (hp_gt : p > q) (hp : Nat.Prime p) (hq : Nat.Prime q)
  (hdiv : q ∣ p - 1) :
  ∀ {G H : Type*} [Group G] [Fintype G] (hG : Fintype.card G = p * q)
    [Group H] [Fintype H] (hH : Fintype.card H = p * q)
    (hG_nonab : ¬ CommGroup G) (hH_nonab : ¬ CommGroup H),
    MulEquiv G H := by sorry
