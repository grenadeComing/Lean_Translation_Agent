import Mathlib

/-- For H0 = \begin{pmatrix}1 & 0\\0 & -1\end{pmatrix} and the rotation matrix
    R_{2θ} = \begin{pmatrix}cos(2θ) & -sin(2θ)\\ sin(2θ) & cos(2θ)\end{pmatrix},
    we have R_{2θ} * H0 * R_{2θ} = H0 for all θ : ℝ. -/
theorem rotation_2theta_h0 (θ : ℝ) :
  ( ![![Real.cos (2 * θ), -Real.sin (2 * θ)], ![Real.sin (2 * θ), Real.cos (2 * θ)]] : Matrix (Fin 2) (Fin 2) ℝ)
  * (![![1, 0], ![0, -1]] : Matrix (Fin 2) (Fin 2) ℝ)
  * ( ![![Real.cos (2 * θ), -Real.sin (2 * θ)], ![Real.sin (2 * θ), Real.cos (2 * θ)]] : Matrix (Fin 2) (Fin 2) ℝ)
  = (![![1, 0], ![0, -1]] : Matrix (Fin 2) (Fin 2) ℝ) := by sorry
