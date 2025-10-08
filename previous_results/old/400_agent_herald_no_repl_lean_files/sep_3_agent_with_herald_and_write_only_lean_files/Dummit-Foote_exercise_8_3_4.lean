import Mathlib
open GaussianInt

/-- Prove that if an integer is the sum of two rational squares, then it is the sum of two integer squares. -/
theorem isSquare_of_isSquare_cast {n : ℤ} (hn : ∃ a b : ℚ, a ^ 2 + b ^ 2 = n) :
    ∃ a b : ℤ, a ^ 2 + b ^ 2 = n := by sorry
