import Mathlib

/-- Prove that the subgroups of (ℤ, +) are exactly the subgroups nℤ for integers n. -/
theorem subgroups_of_Z_are_nz : ∀ (H : AddSubgroup Int), ∃ (n : Int), H = AddSubgroup.closure ({n} : Set Int) := by sorry
