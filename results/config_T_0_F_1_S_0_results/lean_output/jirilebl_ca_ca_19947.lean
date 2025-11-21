import Mathlib

/-- Formalization (statement only) of the inequalities:
For all complex z, ‖sin z‖ ≤ 1/2 * e^{‖z‖} and ‖cos z‖ ≤ 1/2 * e^{‖z‖}.
-/

def sin_norm_le_exp_half_prop : Prop := ∀ z : ℂ, _root_.Norm.norm (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (_root_.Norm.norm z)

def cos_norm_le_exp_half_prop : Prop := ∀ z : ℂ, _root_.Norm.norm (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (_root_.Norm.norm z)

#eval "File contains formal statements of the requested inequalities (using Norm.norm)."
