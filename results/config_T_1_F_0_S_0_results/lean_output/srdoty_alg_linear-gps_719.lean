import Mathlib

/-- The diagonal matrix H0 = [[1,0],[0,-1]] as a 2×2 real matrix. -/
def h0 : Matrix (Fin 2) (Fin 2) ℝ := !![![1, 0], ![0, -1]]

/-- The rotation matrix R_{2θ} with angle 2θ. -/
def r2 (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![![Real.cos (2 * θ), -Real.sin (2 * θ)], ![Real.sin (2 * θ), Real.cos (2 * θ)]]

/-- Conjugation of H0 by R_{2θ} leaves H0 invariant for all real θ. -/
theorem r2_conj_h0 (θ : ℝ) : r2 θ * h0 * r2 θ = h0 := by sorry
