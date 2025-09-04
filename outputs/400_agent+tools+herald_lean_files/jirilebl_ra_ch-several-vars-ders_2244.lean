import Mathlib

theorem det_permutation_matrix_eq_one_or_neg_one {n : Type} [DecidableEq n] [Fintype n] {R : Type} [CommRing R]
  (σ : Equiv.Perm n) :
  Matrix.det (fun i j => if j = σ i then (1 : R) else 0) = 1 ∨ Matrix.det (fun i j => if j = σ i then (1 : R) else 0) = -1 := by sorry
