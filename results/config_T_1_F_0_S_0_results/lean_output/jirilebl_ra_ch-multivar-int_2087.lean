import Mathlib

/-- A set S in R^d is an open rectangle if there exist lower and upper bounds a,b : Fin d → ℝ
    such that S = ∏_{i} (a i, b i). -/
def IsOpenRectangle {d : ℕ} (S : Set (Fin d → ℝ)) : Prop :=
  ∃ (a b : Fin d → ℝ), S = Set.pi Set.univ fun i => Ioo (a i) (b i)

/-- Let μ_star be an outer measure on R^d. Suppose R_i (i : Fin m) are pairwise disjoint open
    rectangles. Then the outer measure of the union equals the sum of the outer measures. -/
theorem outer_measure_union_of_pairwise_disjoint_open_rectangles {d : ℕ} {m_count : ℕ}
  (μ_star : measure_theory.outer_measure (Fin d → ℝ)) (R : Fin m_count → Set (Fin d → ℝ))
  (h_rect : ∀ i, IsOpenRectangle (R i))
  (h_disj : Pairwise fun i j => Disjoint (R i) (R j)) :
  μ_star (⋃ i, R i) = ∑ i : Fin m_count, μ_star (R i) := by sorry