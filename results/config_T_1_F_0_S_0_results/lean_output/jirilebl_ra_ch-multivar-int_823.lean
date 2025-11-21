import Mathlib

theorem box_integral_zero_of_degenerate_side (n : ℕ) (R : BoxIntegral.Box (Fin n))
  (i : Fin n) (h : R.upper i = R.lower i)
  (f : (Fin n → ℝ) → ℝ) (hf : Bounded (Set.range f)) :
  BoxIntegral.HasBoxIntegral R (fun x => f x) 0 := by sorry