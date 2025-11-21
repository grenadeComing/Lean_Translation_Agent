import Mathlib

/-- Rotation of the plane by angle θ: ℝ×ℝ → ℝ×ℝ. -/
def rotation (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun (x, y) => (Real.cos θ * x - Real.sin θ * y, Real.sin θ * x + Real.cos θ * y)

/-- For every θ ∈ ℝ the rotation fixes the origin. -/
theorem rotation_fix_origin (θ : ℝ) : rotation θ (0, 0) = (0, 0) := by sorry
