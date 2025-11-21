import Mathlib

open Set Finset

/-- R^d as the product type Fin d → ℝ. -/
def Rn (d : ℕ) := Fin d → ℝ

/-- Marker predicate saying a functional is an outer measure. (We do not spell out the axioms here.) -/
def IsOuterMeasure {d : ℕ} (μ : Set (Rn d) → ENNReal) : Prop := True

/-- An open rectangle in ℝ^d is a product of open intervals. -/
def is_open_rectangle {d : ℕ} (s : Set (Rn d)) : Prop :=
  ∃ (a b : Rn d), (∀ i, a i < b i) ∧ s = { x | ∀ i, a i < x i ∧ x i < b i }

/-- Pairwise disjointness for a finite family indexed by `Fin k`. -/
def pairwise_disjoint {d k : ℕ} (s : Fin k → Set (Rn d)) : Prop :=
  ∀ i j, (i ≠ j) → (s i ∩ s j = ∅)

/-- If mstar is an outer measure on ℝ^d and R_1,...,R_k are pairwise disjoint open rectangles,
then the outer measure of the union equals the sum of the outer measures. -/
theorem outer_measure_of_disjoint_open_rectangles
  (d k : ℕ)
  (mstar : Set (Rn d) → ENNReal)
  (h_mstar : IsOuterMeasure mstar)
  (R : Fin k → Set (Rn d))
  (h_open : ∀ i, is_open_rectangle (R i))
  (h_disjoint : pairwise_disjoint R) :
  mstar (⋃ i : Fin k, R i) = (Finset.univ : Finset (Fin k)).sum (fun i => mstar (R i)) := by sorry
