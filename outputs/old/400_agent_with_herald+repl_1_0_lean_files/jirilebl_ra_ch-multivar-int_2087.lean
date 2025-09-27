import Mathlib

/-- Let m* be the outer measure on ℝ^n. Suppose R_1,...,R_N are pairwise disjoint open rectangles.
    Then m*(⋃_{k=1}^N R_k) = ∑_{k=1}^N m*(R_k). -/
theorem outer_measure_disjoint_rectangles {n N : ℕ} (mstar : Set (Fin n → ℝ) → ENNReal)
  (R : Fin N → Set (Fin n → ℝ)) (hd : ∀ i j : Fin N, i ≠ j → (R i ∩ R j) = ∅) :
  mstar (⋃ i, R i) = ∑ i, mstar (R i) := by
  sorry
