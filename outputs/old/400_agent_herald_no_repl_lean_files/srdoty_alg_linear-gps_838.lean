import Mathlib
open Matrix

/-- Let F be a field and E(t)=\begin{bmatrix}1&t\\0&1\end{bmatrix} for t\in F. Show that E(t)^{-1}=E(-t) for all t\in F. -/
theorem E_inv_extracted {F : Type*} [Field F] (t : F) :
  (!![1, t; 0, 1] : Matrix (Fin 2) (Fin 2) F)⁻¹ = (!![1, -t; 0, 1] : Matrix (Fin 2) (Fin 2) F) := by sorry
