import Mathlib

open Set

variable {n : Nat}
variable {m_star : Set (Fin n → ℝ) → ENNReal}

/-- Let m_star be an outer measure on R^n. Suppose R_1,...,R_n are pairwise disjoint open rectangles.
    Then m_star (⋃_{k=1}^n R_k) = ∑_{k=1}^n m_star(R_k). -/
theorem outer_measure_add_on_disjoint_open_rectangles
  (R : Fin n → Set (Fin n → ℝ))
  (h_mstar : True) -- placeholder for the assumption that `m_star` is an outer measure
  (h_rect : ∀ i : Fin n, True) -- placeholder for the assumption that each `R i` is an open rectangle
  (h_disj : Pairwise (fun i j : Fin n => Disjoint (R i) (R j))) :
  m_star (⋃ i, R i) = ∑ i, m_star (R i) := by sorry
