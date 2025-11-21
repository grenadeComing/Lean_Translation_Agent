import Mathlib

open Set

/-- Let m* be an outer measure on ℝ^n (here modelled as Fin n → ℝ) satisfying the usual axioms
    (m ∅ = 0 and countable subadditivity). Then for any two sets A,B ⊆ ℝ^n we have
    m (A ∪ B) ≤ m A + m B. -/
theorem outer_measure_union_le (n : ℕ) (m : Set (Fin n → ℝ) → ENNReal)
  (h_empty : m ∅ = 0)
  (h_countable_subadd : ∀ (ι : Type _) (f : ι → Set (Fin n → ℝ)), m (⋃ i, f i) ≤ ∑' i, m (f i))
  (A B : Set (Fin n → ℝ)) :
  m (A ∪ B) ≤ m A + m B := by sorry
