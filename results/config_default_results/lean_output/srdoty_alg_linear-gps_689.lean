import Mathlib

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![Real.cos θ, -Real.sin θ], ![Real.sin θ, Real.cos θ]]

/-- Show that R_theta ∈ SO(2) for all θ. -/
theorem R_theta_mem_SO2 (θ : ℝ) : R θ ∈ SO(2) := by
  -- proof omitted
  sorry
