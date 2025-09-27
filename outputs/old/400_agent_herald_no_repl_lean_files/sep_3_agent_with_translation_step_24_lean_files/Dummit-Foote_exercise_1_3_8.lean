import Mathlib

/-- Let S_Omega denote the group of permutations of the natural numbers. -/
def S_Omega : Type := Equiv.Perm ℕ

theorem S_Omega_infinite : Infinite S_Omega := by
  -- proof omitted
  sorry
