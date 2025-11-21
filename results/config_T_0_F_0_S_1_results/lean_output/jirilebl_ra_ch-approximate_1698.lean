import Mathlib

/--
If f is entire (holomorphic on ℂ) and never vanishes, then f admits a holomorphic logarithm g
on ℂ, i.e. f = exp ∘ g.
-/
theorem nonvanishing_entire_has_holomorphic_log (f : ℂ → ℂ)
  (hf_ne : ∀ z : ℂ, f z ≠ 0)
  (hf_entire : IsHolomorphicOn f Set.univ) :
  ∃ g : ℂ → ℂ, IsHolomorphicOn g Set.univ ∧ ∀ z : ℂ, Complex.exp (g z) = f z :=
by sorry