import Mathlib

theorem test_compile {G : Type u} [Group G] [Fintype G] {p : ℕ}
  (hp : Nat.Prime p) (hodd : p ≠ 2) (hcard : Fintype.card G = 2 * p) : True := by
  trivial
