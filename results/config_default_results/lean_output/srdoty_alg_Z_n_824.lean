import Mathlib

/-- Reflexivity of congruence modulo n. -/
theorem congr_refl (n : ℤ) (a : ℤ) : a ≡ a [ZMOD n] := by sorry

/-- Symmetry of congruence modulo n. -/
theorem congr_symm (n : ℤ) (a b : ℤ) : a ≡ b [ZMOD n] → b ≡ a [ZMOD n] := by sorry

/-- Transitivity of congruence modulo n. -/
theorem congr_trans (n : ℤ) (a b c : ℤ) : a ≡ b [ZMOD n] → b ≡ c [ZMOD n] → a ≡ c [ZMOD n] := by sorry
