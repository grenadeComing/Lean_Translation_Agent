import Mathlib

open Matrix

def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.of fun i j =>
    if i = 0 then if j = 0 then cos θ else -sin θ
    else if j = 0 then sin θ else cos θ

def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.of fun i j =>
    if i = 0 then if j = 0 then cos (2 * θ) else sin (2 * θ)
    else if j = 0 then sin (2 * θ) else -cos (2 * θ)

def O2_set : Set (Matrix (Fin 2) (Fin 2) ℝ) := { A | A.transpose ⬝ A = 1 }

theorem O2_characterization : O2_set = (Set.range R) ∪ (Set.range H) := by sorry
