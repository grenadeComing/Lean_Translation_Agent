import Mathlib

variable {n k : Nat}

-- We keep `is_open_rectangle` as an abstract predicate to avoid committing to a particular encoding.
variable (is_open_rectangle : Set (Fin n → ℝ) → Prop)

/-- Let m* be an outer measure on R^n. If R_1,...,R_k are pairwise disjoint open rectangles, then m* is additive on their finite union. -/
theorem outer_measure_union_of_disjoint_open_rectangles
  (mstar : Set (Fin n → ℝ) → ENNReal)
  (Rs : Fin k → Set (Fin n → ℝ))
  (h_rect : ∀ i, is_open_rectangle (Rs i))
  (h_disj : Pairwise (fun i j => Disjoint (Rs i) (Rs j))) :
  mstar (⋃ i, Rs i) = ∑ i, mstar (Rs i) := by sorry
