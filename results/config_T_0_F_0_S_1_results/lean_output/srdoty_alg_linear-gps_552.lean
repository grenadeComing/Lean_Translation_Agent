import Mathlib

/-- The matrix group SO(2) is isomorphic to the group of rotations of the Euclidean plane R^2.
    We identify a rotation by the matrix (cos θ, -sin θ; sin θ, cos θ) for θ ∈ ℝ. -/
theorem so2_isomorphic_to_rotation_group :
  special_orthogonal_group (Fin 2) ℝ ≃* Set.range (fun θ : ℝ =>
    Matrix.ofFun (fun i j =>
      if i = 0 ∧ j = 0 then Real.cos θ
      else if i = 0 ∧ j = 1 then -Real.sin θ
      else if i = 1 ∧ j = 0 then Real.sin θ
      else Real.cos θ)) := by sorry