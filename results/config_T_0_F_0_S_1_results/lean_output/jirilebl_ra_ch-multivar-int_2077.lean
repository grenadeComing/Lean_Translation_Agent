import Mathlib

/-- Let m_star be the outer measure on ℝ^n defined via coverings by countably many open rectangles.
    In this file we express the basic subadditivity for two sets as a consequence of countable
    subadditivity (the defining property of an outer measure). -/
variable {n : ℕ}

theorem m_star_union_le_add {m_star : Set (Fin n → ℝ) → ENNReal}
  (h_countable_subadd : ∀ (s : ℕ → Set (Fin n → ℝ)), m_star (⋃ i, s i) ≤ ∑' i, m_star (s i))
  (A B : Set (Fin n → ℝ)) :
  m_star (A ∪ B) ≤ m_star A + m_star B := by sorry