import Mathlib

/-- Prove that if Ω = {1,2,3, ...} then S_Ω is an infinite group -/
-- We model Ω as the subtype of natural numbers n with n ≥ 1, i.e. {1,2,3,...} = {n : ℕ // n ≥ 1}.

theorem infinite_symmetric_group_on_omega : Infinite (Equiv.Perm (Set.Ici 1)) := by sorry
