import Mathlib

variable {n : ℕ}
variable (m_star : Set (Fin n → ℝ) → ℝ)

/-- Let `m_star` be the outer measure on `ℝ^n` defined via coverings by countably many open rectangles.
    Then for any two subsets `A, B ⊂ ℝ^n` we have subadditivity: `m_star (A ∪ B) ≤ m_star A + m_star B`. -/
theorem outer_measure_via_rectangles_subadd (A B : Set (Fin n → ℝ)) :
  m_star (A ∪ B) ≤ m_star A + m_star B := by sorry
