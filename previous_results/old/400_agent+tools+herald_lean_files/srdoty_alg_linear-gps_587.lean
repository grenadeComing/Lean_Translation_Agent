import Mathlib

noncomputable def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then (if j = 0 then 1 else 0) else (if j = 0 then 0 else -1)

noncomputable def R (φ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then (if j = 0 then Real.cos φ else - Real.sin φ) else (if j = 0 then Real.sin φ else Real.cos φ)

noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then (if j = 0 then Real.cos (2 * θ) else Real.sin (2 * θ)) else (if j = 0 then Real.sin (2 * θ) else - Real.cos (2 * θ))

theorem H_theta_eq (θ : ℝ) : H θ = H0 * R (-2 * θ) := by sorry
