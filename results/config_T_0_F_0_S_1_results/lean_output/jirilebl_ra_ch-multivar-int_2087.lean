import Mathlib

/--
Let m* be the outer measure on ℝ^d. Suppose R_1,...,R_m are pairwise disjoint open rectangles.
Then m*(⋃_{k=1}^m R_k) = ∑_{k=1}^m m*(R_k).
This statement only presents the theorem (no proof).
-/
theorem lebesgue_outer_measure_disjoint_open_rectangles
  {d m : ℕ} (mstar : measure_theory.outer_measure (Fin d → ℝ))
  (R : Fin m → Set (Fin d → ℝ))
  (h_rect : ∀ j : Fin m, ∃ (a b : Fin d → ℝ), (∀ i, a i < b i) ∧
    R j = Set.pi (Set.univ : Set (Fin d)) (fun i => Set.Ioo (a i) (b i)))
  (h_disjoint : ∀ i j : Fin m, i ≠ j → Disjoint (R i) (R j)) :
  mstar (⋃ j : Fin m, R j) = ∑ j : Fin m, mstar (R j) := by sorry
