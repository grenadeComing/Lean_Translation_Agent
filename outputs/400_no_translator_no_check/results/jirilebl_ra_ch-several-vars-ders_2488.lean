import Mathlib

/--
Let A : ℝ^n → ℝ^m be a linear continuous map (a continuous linear map between finite
real vector spaces). Then A is differentiable at every x and its derivative equals A.
We state the fact for A given as a `ContinuousLinearMap` (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)).
-/
theorem linear_map_has_fderiv_at {n m : ℕ} (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  HasFDerivAt (A : (Fin n → ℝ) → (Fin m → ℝ)) A x := by
  sorry
