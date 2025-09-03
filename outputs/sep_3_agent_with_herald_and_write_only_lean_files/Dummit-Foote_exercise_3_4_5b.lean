import Mathlib

/-!
Prove that quotient groups of a solvable group are solvable.
This file states the theorem; the proof is omitted (``by sorry'').
-/-

variable {G : Type _} [Group G] (N : NormalSubgroup G)

theorem solvable_quotient (h : IsSolvable G) : IsSolvable (G ⧸ N) := by sorry
