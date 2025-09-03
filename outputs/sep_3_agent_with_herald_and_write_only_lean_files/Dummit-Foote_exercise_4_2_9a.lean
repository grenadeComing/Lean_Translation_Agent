import Mathlib

/-!
Exercise (Dummit and Foote 4.2.9a).
If p is a prime and G is a group of order p^α for some α : ℕ, then every subgroup of index p is normal in G.
-/

theorem Dummit_Foote_exercise_4_2_9a {G : Type*} [Group G] [Fintype G] {p : ℕ} (hp : Nat.Prime p)
  {α : ℕ} (hcard : Fintype.card G = p ^ α) (H : Subgroup G)
  (hindex : Fintype.card (G ⧸ H) = p) :
  -- Every subgroup of index p is normal
  H.normal := by sorry
