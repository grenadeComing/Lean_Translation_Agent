import Mathlib

/-- For any complex number z, |csc z| ≥ |csc (Re z)|, stated using Norm.norm instead of Complex.abs. -/
theorem abs_csc_ge_abs_csc_re (z : ℂ) : (@Norm.norm ℂ _ (1 / Complex.sin z)) ≥ (@Norm.norm ℂ _ (1 / Complex.sin z.re)) := by sorry
