import Mathlib

/--
If a and b are integers and a divides b in the ring of Gaussian integers, then a divides b in ℤ.
We state this by coercing integers into `GaussianInt`.
-/
theorem Artin_exercise_11_2_13 (a b : Int) (h : (a : GaussianInt) ∣ (b : GaussianInt)) : a ∣ b := by sorry
