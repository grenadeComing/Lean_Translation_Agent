import Mathlib

theorem inf_eq_neg_sup_neg {A : Set ℝ} (hne : A.Nonempty) (h : BddBelow A) :
  sInf A = - (sSup (Set.image (fun x => -x) A)) := by sorry
