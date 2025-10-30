import Mathlib

open Set

variable {n : ℕ}

/-- Outer measures on ℝ^n: mStar and muStar. Placeholder definitions. -/

def mStar (S : Set (Fin n → ℝ)) : ℝ := by
  sorry


def muStar (S : Set (Fin n → ℝ)) : ℝ := by
  sorry

 theorem muStar_eq_mStar (S : Set (Fin n → ℝ)) : muStar S = mStar S := by
  sorry
