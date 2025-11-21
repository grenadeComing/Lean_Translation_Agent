import Mathlib

/-
The matrix group SO(2) is isomorphic to the group {ρ_θ : θ ∈ ℝ} of rotations of the Euclidean plane ℝ^2.
We state a commonly used equivalent formulation: SO(2) (as a subtype of matrices) is multiplicatively equivalent to the unit circle in ℂ (Circle), which corresponds to rotations of the plane.
-/

open Matrix

/-- Multiplicative equivalence between SO(2) (as a subtype of matrices) and the unit circle in ℂ. -/
noncomputable def so2_equiv_circle :
  MulEquiv (↥(Matrix.specialOrthogonalGroup (Fin 2) ℝ)) Circle := by sorry
