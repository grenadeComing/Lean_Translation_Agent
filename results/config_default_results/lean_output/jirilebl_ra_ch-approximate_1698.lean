import Mathlib

open Complex

/--
Let f be entire and suppose f(z) ≠ 0 for all z. Show that there exists a holomorphic g with f = e^g.
-/
theorem exists_log_of_nonvanishing_entire {f : Complex → Complex} (hf_diff : Differentiable Complex f) (hf_ne_zero : ∀ z, f z ≠ 0) :
  ∃ g : Complex → Complex, Differentiable Complex g ∧ (∀ z, f z = Complex.exp (g z)) := by sorry
