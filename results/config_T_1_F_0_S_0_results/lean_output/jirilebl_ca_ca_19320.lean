import Mathlib

/-- If z ∈ ℂ, then |cos z| ≤ cosh (Im z). -/
theorem abs_cos_le_cosh_im (z : ℂ) : Complex.abs (Complex.cos z) ≤ Real.cosh z.im := by sorry