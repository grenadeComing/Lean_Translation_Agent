import Mathlib

/-- If z ∈ ℂ, then the norm of cos z is at most cosh (Im z). -/
theorem norm_cos_le_cosh_im (z : Complex) : Norm.norm (Complex.cos z) ≤ Real.cosh (Complex.im z) := by sorry
