import Mathlib

/-- The rotation operator on R^2 given by the rotation matrix
    R_θ = [[cos θ, -sin θ], [sin θ, cos θ]]. -/

def rotation (θ : ℝ) : ℝ × ℝ → ℝ × ℝ :=
  fun p => (Real.cos θ * p.fst - Real.sin θ * p.snd,
            Real.sin θ * p.fst + Real.cos θ * p.snd)

theorem rotation_fixes_origin (θ : ℝ) : rotation θ (0, 0) = (0, 0) := by
  -- proof omitted
  sorry
