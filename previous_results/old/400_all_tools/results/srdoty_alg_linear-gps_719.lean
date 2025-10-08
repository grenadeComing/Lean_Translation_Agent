import Mathlib

open Matrix

/-- The diagonal matrix H0 = [[1, 0], [0, -1]] as a 2×2 real matrix. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i.val, j.val with
  | 0, 0 => 1
  | 0, 1 => 0
  | 1, 0 => 0
  | 1, 1 => -1
  | _, _ => 0

/-- The rotation matrix R_{2θ} = [[cos(2θ), -sin(2θ)], [sin(2θ), cos(2θ)]] as a 2×2 real matrix. -/
noncomputable def R2 (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i.val, j.val with
  | 0, 0 => Real.cos (2 * θ)
  | 0, 1 => -Real.sin (2 * θ)
  | 1, 0 => Real.sin (2 * θ)
  | 1, 1 => Real.cos (2 * θ)
  | _, _ => 0

/-- For all real θ, R_{2θ} H0 R_{2θ} = H0. -/
theorem R2_H0_conj (θ : ℝ) : R2 θ * H0 * R2 θ = H0 := by
  sorry
