import Mathlib

/-- The rotation matrix by angle θ in R^{2×2}. -/
def rotation_matrix (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![Real.cos θ, -Real.sin θ], ![Real.sin θ, Real.cos θ]]

/-- The matrix group SO(2) is isomorphic to the subgroup of 2×2 rotation matrices.

    Concretely: SO(2) ≃* { M : Matrix (Fin 2) (Fin 2) ℝ // ∃ θ, M = rotation_matrix θ } -/
theorem so2_equiv_rotation_subgroup :
  Matrix.special_orthogonal_group (Fin 2) ≃* { M : Matrix (Fin 2) (Fin 2) ℝ // ∃ θ : ℝ, M = rotation_matrix θ } := by sorry