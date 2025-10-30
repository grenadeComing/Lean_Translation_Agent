import Mathlib

/-- Let f : ℂ → ℂ be a function such that f(z + w) = f(z) * f(w) for all complex numbers z, w, and f(0) = 1. Show that f(z) != 0 for all z in ℂ. In other words, if a function f satisfies f(z+w) = f(z) f(w) and f(0) = 1, then f(z) ≠ 0 for all z. -/
theorem ne_zero_of_add_ext {f : ℂ → ℂ} (h : ∀ z w, f (z + w) = f z * f w) (h0 : f 0 = 1) : ∀ z, f z ≠ 0 := by
  sorry
