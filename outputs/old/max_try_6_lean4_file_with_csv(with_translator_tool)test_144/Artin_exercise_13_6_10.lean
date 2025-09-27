import Mathlib

open Finset

theorem Artin_exercise_13_6_10 {K : Type*} [Field K] [Fintype K] [DecidableEq K] :
  (Finset.filter (fun x : K => x ≠ 0) (Finset.univ : Finset K)).prod (fun x => x) = (-1 : K) := by
  sorry
