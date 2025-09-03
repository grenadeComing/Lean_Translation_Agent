import Mathlib

/-- Let K be a finite field. The product of the nonzero elements of K is -1. -/
theorem product_nonzero_elements_eq_neg_one {K : Type*} [Field K] [Fintype K] [DecidableEq K] :
  (Finset.prod ((Finset.univ : Finset K).erase (0 : K)) (fun x => x)) = -1 := by sorry
