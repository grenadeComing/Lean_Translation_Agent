import Mathlib

open Matrix

theorem det_permutation_matrix {n : Type _} [Fintype n] [DecidableEq n] {R : Type _} [CommRing R]
  (σ : Equiv.Perm n) :
  Matrix.det (fun i j => if j = σ i then (1 : R) else 0) = (1 : R) ∨
    Matrix.det (fun i j => if j = σ i then (1 : R) else 0) = -(1 : R) := by sorry
