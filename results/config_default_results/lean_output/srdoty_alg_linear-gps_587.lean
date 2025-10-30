import Mathlib

noncomputable section

/-- 2x2 real matrices: H0 and rotation R(φ) --/
 def H0 : Matrix (Fin 2) (Fin 2) ℝ := ![![1, 0], ![0, -1]]

def R (φ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := ![![Real.cos φ, -Real.sin φ], ![Real.sin φ, Real.cos φ]]

/-- Define H(θ) by H_θ = H0 * R(-2θ) --/
 def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := H0 ⬝ R (-2 * θ)

-- Statement to translate: For all θ ∈ ℝ, H_θ = H_0 R_{-2θ}.
 theorem H_theta_eq (θ : ℝ) : H θ = H0 ⬝ R (-2 * θ) := by
  sorry

end noncomputable section
