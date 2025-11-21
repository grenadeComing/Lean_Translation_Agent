import Mathlib

/-- The rotation rho_theta on R^2 given by the standard 2x2 rotation matrix. -/
noncomputable def rho (θ : Real) : Real × Real → Real × Real :=
  fun ⟨x, y⟩ => (Real.cos θ * x - Real.sin θ * y, Real.sin θ * x + Real.cos θ * y)

/-- For every angle θ, the rotation fixes the origin. -/
theorem rotation_fixes_origin : ∀ θ : Real, rho θ (0, 0) = (0, 0) := by
  sorry
