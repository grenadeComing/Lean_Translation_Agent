import Mathlib

open Finset

theorem prod_nonzero_elements_eq_neg_one {K : Type*} [Field K] [Fintype K] [DecidableEq K] :
  Finset.prod ((Finset.univ : Finset K).erase (0 : K)) id = (-1 : K) := by sorry
