import Mathlib

/-- Rotation by an angle θ in ℝ^2, expressed as the usual 2×2 rotation matrix action on vectors.
    We represent vectors as pairs (x, y) : ℝ × ℝ and define the map explicitly. -/
def rotation (θ : ℝ) : ℝ × ℝ → ℝ × ℝ :=
  fun v =>
    let (x, y) := v
    (Real.cos θ * x - Real.sin θ * y, Real.sin θ * x + Real.cos θ * y)

/-- For every real θ, the rotation fixes the origin. -/
theorem rotation_fix_origin (θ : ℝ) : rotation θ (0 : ℝ × ℝ) = (0 : ℝ × ℝ) := by sorry
