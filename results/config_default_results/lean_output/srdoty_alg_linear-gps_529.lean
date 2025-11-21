import Mathlib

/-! Rotations in R^2 and their algebraic properties. -/

noncomputable def rho (θ : ℝ) (v : ℝ × ℝ) : ℝ × ℝ :=
  (v.fst * Real.cos θ - v.snd * Real.sin θ,
   v.fst * Real.sin θ + v.snd * Real.cos θ)

theorem rotation_mul (θ1 θ2 : ℝ) (v : ℝ × ℝ) :
  rho θ1 (rho θ2 v) = rho (θ1 + θ2) v := by sorry

theorem rotation_inv (θ : ℝ) (v : ℝ × ℝ) :
  rho θ (rho (-θ) v) = v := by sorry

theorem rotation_comm (θ1 θ2 : ℝ) (v : ℝ × ℝ) :
  rho θ1 (rho θ2 v) = rho θ2 (rho θ1 v) := by sorry
