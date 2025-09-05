import Mathlib

open Set

variable {m N : ℕ}

/-- Let `mstar` be an outer measure on `ℝ^m` (represented as `Fin m → ℝ`).
    Suppose `R : Fin N → Set (Fin m → ℝ)` are pairwise disjoint open rectangles.
    Then the outer measure of the union equals the sum of the outer measures. -/
variable (mstar : OuterMeasure (Fin m → ℝ)) (R : Fin N → Set (Fin m → ℝ))

variable (h_open : ∀ k : Fin N, IsOpen (R k))
/-- Each `R k` is an `m`-dimensional open rectangle (product of open intervals). -/
variable (h_is_rect : ∀ k : Fin N, ∃ (I : Fin m → Set ℝ), (∀ i, IsOpen (I i)) ∧ R k = Set.pi (Finset.univ : Finset (Fin m)) fun i => I i)

/-- Pairwise disjointness of the rectangles. -/
variable (h_disj : ∀ i j : Fin N, i ≠ j → Disjoint (R i) (R j))

theorem outer_measure_finite_additive_on_disjoint_open_rectangles :
  mstar (⋃ k : Fin N, R k) = (Finset.univ : Finset (Fin N)).sum fun k => mstar (R k) := by sorry
