import Mathlib

open Matrix

/-- The 2×2 rotation matrix R(θ) = [[cos θ, -sin θ], [sin θ, cos θ]] -/
def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.ofFun fun i j =>
    match i, j with
    | ⟨0, _⟩, ⟨0, _⟩ => cos θ
    | ⟨0, _⟩, ⟨1, _⟩ => -sin θ
    | ⟨1, _⟩, ⟨0, _⟩ => sin θ
    | ⟨1, _⟩, ⟨1, _⟩ => cos θ

/-- For every real θ, the rotation matrix R(θ) is orthogonal and has determinant 1 (hence lies in SO(2)). -/
theorem R_in_SO2 (θ : ℝ) : Matrix.mul (Matrix.transpose (R θ)) (R θ) = 1 ∧ Matrix.det (R θ) = 1 := by sorry
