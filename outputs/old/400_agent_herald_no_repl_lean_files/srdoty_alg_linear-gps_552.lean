import Mathlib

open Matrix

/-- The standard rotation matrix in R^{2} by angle θ. -/
def rotationMatrix (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![Real.cos θ, -Real.sin θ; Real.sin θ, Real.cos θ]

/-- The set of 2×2 rotation matrices. -/
def rotations : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | ∃ θ : ℝ, M = rotationMatrix θ }

/--
The special orthogonal group SO(2) is (morally) the group of rotations of the Euclidean plane.
This states the usual identification of SO(2) with the set of rotation matrices {ρ_θ : θ ∈ ℝ}.
-/
theorem so2_eq_rotations :
  Matrix.SpecialOrthogonalGroup (Fin 2) ℝ = { M | ∃ θ : ℝ, M = rotationMatrix θ } := by sorry
