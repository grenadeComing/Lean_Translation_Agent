import Mathlib

/-- Let f : ℂ → ℂ be holomorphic on the whole plane and suppose f(z) ≠ 0 for all z.
    Then there exists g : ℂ → ℂ holomorphic on the whole plane with f = Complex.exp ∘ g. -/
theorem exists_holomorphic_log (f : ℂ → ℂ) (h_nonzero : ∀ z, f z ≠ 0)
  (h_holo : IsHolomorphicOn f (univ : Set ℂ)) :
  ∃ g : ℂ → ℂ, IsHolomorphicOn g (univ : Set ℂ) ∧ f = Complex.exp ∘ g := by sorry