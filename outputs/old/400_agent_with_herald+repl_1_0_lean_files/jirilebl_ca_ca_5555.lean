import Mathlib

/-- Schwarz lemma: if f maps the unit disk to itself and f(0)=0 then |f z| ≤ |z| for |z|<1. -/
theorem schwarz_lemma (f : Complex → Complex)
  (hf_map : ∀ z, Complex.abs z < 1 → Complex.abs (f z) < 1)
  (h0 : f 0 = 0) :
  ∀ z, Complex.abs z < 1 → Complex.abs (f z) ≤ Complex.abs z := by sorry
