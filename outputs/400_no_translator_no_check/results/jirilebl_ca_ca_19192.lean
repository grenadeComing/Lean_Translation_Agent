import Mathlib

/-!
Translate: Let z ∈ ℂ. Prove that |sec z| ≥ |sec (Re z)|.
This file states the lemma (as written) and leaves the proof as `sorry`.
-/

open Complex

noncomputable def sec (z : ℂ) : ℂ := (Complex.cos z)⁻¹

theorem abs_sec_ge_abs_sec_re (z : ℂ) : Complex.abs (sec z) ≥ Complex.abs (sec (z.re : ℂ)) := by sorry
