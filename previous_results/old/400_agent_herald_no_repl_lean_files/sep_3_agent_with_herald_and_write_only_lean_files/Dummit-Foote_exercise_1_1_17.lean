import Mathlib

variable {G : Type _} [Group G]
variable {x : G} {n : ℕ}

/-- If |x| = n, i.e., x^n = 1 and n is the least positive exponent, then x^{-1} = x^{n-1}. -/
theorem Dummit_Foote_exercise_1_1_17 (h_pow : x ^ n = 1) (h_min : ∀ m, m < n → x ^ m ≠ 1) (hn : 0 < n) : x⁻¹ = x ^ (n - 1) := by sorry
