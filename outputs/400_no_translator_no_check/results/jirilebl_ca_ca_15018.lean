import Mathlib

/-!
Let z ∈ ℂ. Prove |csc z| ≥ |csc (Re z)|.
-/

theorem abs_csc_ge_re (z : ℂ) : (1 / Complex.sin z).abs ≥ (1 / Complex.sin (z.re : ℂ)).abs := by
  sorry
