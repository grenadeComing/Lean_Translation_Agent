import Mathlib

/-!
Let z ∈ ℂ. Prove that |sec z| ≥ |sec (Re z)|.
We state the lemma; proof omitted (:= by sorry).
-/

theorem complex_sec_abs_ge_re (z : ℂ) :
  Complex.abs (Complex.sec z) ≥ Complex.abs (Complex.sec (z.re : ℂ)) := by sorry
