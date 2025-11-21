import Mathlib

open Matrix

theorem srdoty_alg_linear_gps_373 {n : ℕ} (A : Matrix (Fin n) (Fin n) Real)
  (h : Matrix.transpose A * A = 1) :
  ∀ (i j : Fin n), (Finset.univ.sum (fun k : Fin n => A k i * A k j)) = if i = j then (1 : Real) else 0 := by
  sorry
